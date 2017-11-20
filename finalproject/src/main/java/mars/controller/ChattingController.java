package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChattingController {
	
	@RequestMapping("chat.do")
	public ModelAndView chat(@RequestParam("user2_name")String user2_name, @RequestParam("user2_idx")String user2_idx, @RequestParam("user2_profile_img")String user2_profile_img) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("user2_name", user2_name);
		mav.addObject("user2_idx", user2_idx);
		mav.addObject("user2_profile_img", user2_profile_img);
		mav.setViewName("chatting/chat");
		return mav;
	}
}
