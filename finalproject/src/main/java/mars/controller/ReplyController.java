package mars.controller;

import java.util.List;

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
	
	@RequestMapping("/replyList.do")
	   public ModelAndView replyList(@RequestParam("content_idx")int content_idx){
	      List<ReplyDTO> list = replydao.replyList(content_idx);
	      System.out.println(list);
	      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);
	      
	      return mav;
	   }
	
   @RequestMapping("reply.do")
   public ModelAndView reply(ReplyDTO dto){
      ModelAndView mav = new ModelAndView();
      
      int result = replydao.addReply(dto);
      
      
      return mav;
   }
}