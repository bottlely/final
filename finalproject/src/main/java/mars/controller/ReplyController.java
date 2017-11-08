package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReplyController {

   @RequestMapping("reply.do")
   public ModelAndView reply(@RequestParam("reply")String reply){
      ModelAndView mav = new ModelAndView();
      
      
      
      return mav;
   }
}