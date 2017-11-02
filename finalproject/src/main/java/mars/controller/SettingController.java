package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.MemberDTO;
import mars.setting.model.SettingDAO;

@Controller
public class SettingController {
	
	@Autowired
	private SettingDAO settingDao; 

//	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.GET)
	@RequestMapping(value = "/infoSettingForm.do")
	public ModelAndView infoSettingForm() {
//		public ModelAndView infoSettingForm(int idx) {
//		MemberDTO dto = settingDao.getMyInfo(idx);
		MemberDTO dto = settingDao.getMyInfo(12);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.setViewName("setting/infoSetting");
		return mav;
	}

//	@RequestMapping(value = "/infoSetting.do", method = RequestMethod.POST)
	@RequestMapping(value = "/infoSetting.do")
	public ModelAndView infoSetting(MemberDTO dto) {
		ModelAndView mav = new ModelAndView();
		int count = settingDao.updateMyInfo(dto);
		String msg = count>0? "수정되었습니다." : "수정에 실패하였습니다.";
		String gourl="infoSettingForm.do";
		mav.addObject("msg", msg);
		mav.addObject("gourl", gourl);
		mav.setViewName("setting/settingMsg");
		return mav;
	}
}
