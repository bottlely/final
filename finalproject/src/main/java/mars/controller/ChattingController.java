package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChattingController {
	
	@RequestMapping("/broadcasting.do") 
	public String chatForm() {
		//return "broadcasting/broadcast2";
		return "broadcasting/chat";
	}
	
	@RequestMapping("chat.do")
	public ModelAndView chat_test(@RequestParam("user2_name")String user2_name, @RequestParam("user2_idx")String user2_idx, @RequestParam("user2_profile_img")String user2_profile_img) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("user2_name", user2_name);
		mav.addObject("user2_idx", user2_idx);
		mav.addObject("user2_profile_img", user2_profile_img);
		mav.setViewName("broadcasting/chat");
		return mav;
	}
	
	/*@RequestMapping("/chat.do") 
	public ModelAndView chatForm(@RequestParam("other_name")String other_name, @RequestParam("other_profile_img")String other_profile_img) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("other_name", other_name);
		mav.addObject("other_profile_img", other_profile_img);
		mav.setViewName("broadcasting/broadcast2");
		return mav;
	}*/
}
