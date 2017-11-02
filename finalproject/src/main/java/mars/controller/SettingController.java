package mars.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.MemberDTO;
import mars.setting.model.SettingDAO;

@Controller
public class SettingController {

	@Autowired
	private SettingDAO settingDao;

	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.GET)
	public ModelAndView infoSettingForm() {
		// public ModelAndView infoSettingForm(int idx) {
		// MemberDTO dto = settingDao.getMyInfo(idx);
		MemberDTO dto = settingDao.getMyInfo(12);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("setting/infoSetting");
		return mav;
	}

	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.POST)
	public ModelAndView infoSetting(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int count = settingDao.updateMyInfo(dto);
		String msg = count > 0 ? "수정되었습니다." : "수정에 실패하였습니다.";
		String gourl = "infoSetting.do";
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}

	@RequestMapping(value = "/pwdSetting.do", method = RequestMethod.GET)
	// public ModelAndView pwdSettingForm(int idx){
	public String pwdSettingForm() {
		return "setting/pwdSetting";
	}

	@RequestMapping(value = "/pwdSetting.do", method = RequestMethod.POST)
	// public ModelAndView pwdSetting(@RequestParam("cur_pwd")String cur_pwd,
	// @RequestParam("ch_pwd")String ch_pwd, int idx){
	public ModelAndView pwdSetting(@RequestParam("cur_pwd") String cur_pwd, @RequestParam("ch_pwd") String ch_pwd) {
		int idx = 12;
		String msg = "";
		String gourl = "pwdSetting.do";
		String sv_pwd = settingDao.getMyPwd(idx);
		if (sv_pwd.equals(cur_pwd)) {
			HashMap map = new HashMap<String, String>();
			map.put("idx", idx);
			map.put("pwd", ch_pwd);
			int count = settingDao.changePwd(map);
			msg = count > 0 ? "비밀번호가 변경되었습니다." : "비밀번호 변경에 실패했습니다.";
		} else {
			msg = "현재비밀번호가 일치하지 않습니다.";
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

	@RequestMapping(value="leaveMars.do", method=RequestMethod.POST)
	public ModelAndView leaveMars() {
		// public ModelAndView leaveMars(int idx){
		int idx = 12;
		int count = settingDao.leaveMars(idx);
		String msg = count>0? "탈퇴되었습니다." : "탈퇴에 실패하엿습니다.";
		String gourl = count>0? "index.do" : "leaveMars.do";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}
}
