package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdController {
	
	@RequestMapping("/applyAdForm.do")
	public String adJoinForm(){
		//광고주 등록이 되어 있는지 확인!
		return "ad/applyAd";
	}
	

}
