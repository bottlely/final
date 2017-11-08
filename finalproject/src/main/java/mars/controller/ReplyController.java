package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import mars.reply.model.*;

@Controller
public class ReplyController {

	@Autowired
	private ReplyDAO replydao;
	
   @RequestMapping("reply.do")
   public ModelAndView reply(@RequestParam("reply")String reply){
      ModelAndView mav = new ModelAndView();
      
      
      
      return mav;
   }
}