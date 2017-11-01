package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdController {
	
	@RequestMapping("/applyAdForm.do")
	public String adJoinForm(){
		//광고주 등록이 되어 있는지 확인!
		return "ad/applyAd";
	}
	
	
	@RequestMapping("/applyAdOk.do")
	public String acceptJoinForm(){
		//저장
		return "main/main";
	}
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		ModelAndView mav = new ModelAndView();
		
		
		
		return "ad/checkCurAd.do";
	}
	

}
