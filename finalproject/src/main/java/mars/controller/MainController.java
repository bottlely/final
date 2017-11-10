package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.reply.model.MyHomeReplyDTO;
import mars.reply.model.ReplyDAO;
import mars.reply.model.ReplyDTO;

@Controller
public class MainController {
   @Autowired
   private ReplyDAO replydao;

   @RequestMapping("main.do")
   public String mainPage() {
      return "main/main";
   }
   
   @RequestMapping("main_view.do")
   public ModelAndView main_viewPage(@RequestParam("content_idx")int content_idx) {
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
      
      ModelAndView mav = new ModelAndView();
      
      mav.addObject("list", list);
      
      mav.setViewName("main/main_view");
      
      return mav;
   }
}