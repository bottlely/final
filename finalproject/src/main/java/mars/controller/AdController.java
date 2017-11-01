package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdController {
	
	@RequestMapping("/applyAdForm.do")
	public String adJoinForm(){
		return "ad/applyAd";
	}
	

}
