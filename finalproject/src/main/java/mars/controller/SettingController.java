package mars.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.friend.model.FriendDTO;
import mars.group.model.GroupDTO;
import mars.member.model.MemberDTO;
import mars.report.model.ReportDTO;
import mars.setting.model.SettingDAO;
import mars.setting.model.UpdateListDTO;

@Controller
public class SettingController {

	@Autowired
	private SettingDAO settingDao;

	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.GET)
	public ModelAndView infoSettingForm(int idx) {
		MemberDTO dto = settingDao.getMyInfo(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("setting/infoSetting");
		return mav;
	}

	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.POST)
	public ModelAndView infoSetting(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int count = settingDao.updateMyInfo(dto);
		String msg = count > 0 ? "정보가 수정되었습니다." : "정보수정에 실패하였습니다.";
		String gourl = "infoSetting.do?idx="+dto.getIdx();
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping(value = "/pwdSetting.do", method = RequestMethod.GET)
	public String pwdSettingForm() {
		return "setting/pwdSetting";
	}

	@RequestMapping(value = "/pwdSetting.do", method = RequestMethod.POST)
	public ModelAndView pwdSetting(@RequestParam("cur_pwd") String cur_pwd, @RequestParam("ch_pwd") String ch_pwd,
			int idx) {
		String msg = "";
		String gourl = "pwdSetting.do";
		String sv_pwd = settingDao.getMyPwd(idx);
		if (sv_pwd.equals(cur_pwd)) {
			HashMap map = new HashMap<String, String>();
			map.put("idx", idx);
			map.put("pwd", ch_pwd);
			int count = settingDao.changePwd(map);
			msg = count > 0 ? "비밀번호가 변경되었습니다." : "비밀번호 변경에 실패하였습니다.";
		} else {
			msg = "현재 비밀번호가 일치하지 않습니다.";
		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping(value = "leaveMars.do", method = RequestMethod.GET)
	public String leaveMarsForm() {
		return "setting/leaveMars";
	}

	@RequestMapping(value = "leaveMars.do", method = RequestMethod.POST)
	public ModelAndView leaveMars(int idx) {
		int count = settingDao.leaveMars(idx);
		String msg = count > 0 ? "탈퇴되었습니다." : "탈퇴에 실패하였습니다.";
		String gourl = count > 0 ? "index.do" : "leaveMars.do";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping("serviceCenter.do")
	public ModelAndView serviceCenter(int idx) {
		MemberDTO dto = settingDao.getMyInfo(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("setting/serviceCenter");
		return mav;
	}

	@RequestMapping("sendReport.do")
	public ModelAndView sendReport(int category, String content, int idx_from) {
		ModelAndView mav = new ModelAndView();
		ReportDTO dto = new ReportDTO(idx_from, content, category);
		int count = settingDao.sendReport(dto);
		String msg = count > 0 ? "신고가 접수되었습니다." : "실패하였습니다. 다시 시도하여 주십시오";
		mav.addObject("msg", msg);
		mav.addObject("gourl", "serviceCenter.do?idx=" + idx_from);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping("friendSetting.do")
	public ModelAndView friendsSetting(int idx) {
		// List<GroupListDTO> g_list = settingDao.getGroupList(idx);
		List<FriendDTO> g_list = settingDao.getGroupList(idx);
		List<MemberDTO> list = settingDao.getFollowingList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("g_list", g_list);
		mav.setViewName("setting/friendSetting");
		return mav;
	}

	@RequestMapping("addGroupForm.do")
	public ModelAndView addGroupForm(int idx) {
		List<MemberDTO> list = settingDao.getFollowingList(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("idx_from", idx);
		mav.setViewName("setting/addGroupForm");
		return mav;
	}

	@RequestMapping("addGroup.do")
	public ModelAndView addGroup(@RequestParam("group_name") String group_name, @RequestParam("idx_to") int[] idx_to,
			int idx_from) {
		int idx_ff = 0;
		int result = 0;
		ModelAndView mav = new ModelAndView();

		int group_cnt = settingDao.getGroupCnt(idx_from);
		FriendDTO dto = new FriendDTO(idx_from, group_name, group_cnt + 1);
		int count = settingDao.addGroup(dto);

		if (count > 0) {
			idx_ff = settingDao.getGroupIdx(dto);
			for (int i = 0; i < idx_to.length; i++) {
				GroupDTO gdto = new GroupDTO(idx_from, idx_to[i], idx_ff, group_name);
				count = settingDao.insertGroup(gdto);
				result = count > 0 ? result + 1 : result;
			}
		}

		String msg = result == idx_to.length ? "그룹이 생성되었습니다." : "그룹 생성에 실패하였습니다. 다시 시도하여 주십시오.";
		mav.addObject("msg", msg);
		mav.addObject("gourl", "friendSetting.do?idx=" + idx_from);
		mav.setViewName("setting/popupMsg");
		return mav;
	}

	@RequestMapping("showGroup.do")
	public ModelAndView showGroup(int idx_ff) {
		List<GroupDTO> group = settingDao.showGroup(idx_ff);
		ModelAndView mav = new ModelAndView("marsJson", "memberList", group);
		return mav;
	}

	@RequestMapping("groupMember.do")
	public ModelAndView groupMember(int idx) {
		List<MemberDTO> list = settingDao.groupMember(idx);
		ModelAndView mav = new ModelAndView("marsJson", "memberList", list);
		return mav;
	}

	@RequestMapping("deleteGroup.do")
	public ModelAndView deleteGroup(int idx_ff, int idx) {
		String msg = "";
		ModelAndView mav = new ModelAndView();
		int count = settingDao.deleteGroup(idx_ff);
		if (count > 0) {
			count = settingDao.deleteff(idx_ff);
			msg = count > 0 ? "삭제되었습니다." : "삭제에 실패하였습니다.";
		}

		mav.addObject("msg", msg);
		mav.addObject("gourl", "friendSetting.do?idx=" + idx);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping("updateGroupForm.do")
	public ModelAndView updateGroupForm(int idx_ff, int idx) {
		List<MemberDTO> list =  settingDao.getFollowingList(idx);
		List<GroupDTO> group = settingDao.showGroup(idx_ff);

		HashMap map = new HashMap<String, String>();
		map.put("user2_idx", idx);
		map.put("idx", idx_ff);
		String groupName = settingDao.groupName(map);

		List<UpdateListDTO> arr = new ArrayList<UpdateListDTO>();

		for (int j = 0; j < list.size(); j++) {
			for (int i = 0; i < group.size(); i++) {
				boolean a = Arrays.asList(list.get(j).getIdx()).contains(group.get(i).getIdx_to());
				if (a) {
					UpdateListDTO dto = new UpdateListDTO(list.get(j).getName(), list.get(j).getIdx(), true);
					arr.add(dto);
					list.remove(j);
				}
			}
		}

		for (int i = 0; i < list.size(); i++) {
			UpdateListDTO dto = new UpdateListDTO(list.get(i).getName(), list.get(i).getIdx(), false);
			arr.add(dto);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("arr", arr);
		mav.addObject("groupName", groupName);
		mav.addObject("idx_from", idx);
		mav.setViewName("setting/updateGroupForm");
		return mav;
	}
	
	@RequestMapping("updateGroup.do")
	public ModelAndView updateGroup(@RequestParam("group_name") String group_name, @RequestParam("idx_to") int[] idx_to, int idx_from, int idx_ff) {
		int result = 0;
		ModelAndView mav = new ModelAndView();

		int count = settingDao.deleteGroup(idx_ff);
		if (count > 0) {
			count = settingDao.deleteff(idx_ff);

			if (count > 0) {
				int group_cnt = settingDao.getGroupCnt(idx_from);
				FriendDTO dto = new FriendDTO(idx_from, group_name, group_cnt + 1);
				count = settingDao.addGroup(dto);

				if (count > 0) {
					idx_ff = settingDao.getGroupIdx(dto);
					for (int i = 0; i < idx_to.length; i++) {
						GroupDTO gdto = new GroupDTO(idx_from, idx_to[i], idx_ff, group_name);
						count = settingDao.insertGroup(gdto);
						result = count > 0 ? result + 1 : result;
					}
				}
			}
		}

		String msg = result == idx_to.length ? "그룹이 생성되었습니다." : "그룹 생성에 실패하였습니다. 다시 시도하여 주십시오.";
		mav.addObject("msg", msg);
		mav.addObject("gourl", "friendSetting.do?idx=" + idx_from);
		mav.setViewName("setting/popupMsg");
		return mav;
	}

}
