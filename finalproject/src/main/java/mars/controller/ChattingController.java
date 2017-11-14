package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChattingController {
	
	@RequestMapping("/chat.do") 
	public String chatForm() {
		return "broadcasting/broadcast";
	}
	
	@RequestMapping(value="/broadcast.do", method = RequestMethod.GET)
	public void chat(@RequestParam("uesr_idx")int user_idx, @RequestParam("chat_content")String chat_content) {
		System.out.println("hi");
		//ModelAndView mav = new ModelAndView();
		System.out.println("user_idx: "+user_idx);
		System.out.println("chat: "+chat_content);
	}
}
