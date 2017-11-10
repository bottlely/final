package mars.controller;

import java.util.HashMap;
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
         List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
         
         ModelAndView mav = new ModelAndView("marsJson", "replyList", list);
         
         return mav;
      }

      @RequestMapping("/reply.do")
      public ModelAndView reply(@RequestParam("content")String content){
            int content_idx = replydao.addReply(content);
            
            ModelAndView mav = new ModelAndView("marsJson");
            
            return mav;
         }
   
   @RequestMapping("/re_Reply.do")
   public ModelAndView re_Reply(@RequestParam("reply_idx")int reply_idx, @RequestParam("content")String content){
      HashMap map = new HashMap<String, String>();
      
      int sunbun = replydao.sunbun(reply_idx) + 1;
      int ref = replydao.ref(reply_idx);
      
      map.put("reply_idx", reply_idx);
      map.put("content", content);
      map.put("sunbun", sunbun);
      map.put("ref", ref);
      
      int result = replydao.re_AddReply(map);
      
      ModelAndView mav = new ModelAndView("marsJson");
      
      return mav;
   }
   
   /*@RequestMapping("/update_Reply.do")
   public ModelAndView update_Reply(@RequestParam("reply_idx")int reply_idx, @RequestParam("content")String content){
      ModelAndView mav = new ModelAndView();
      
      HashMap map = new HashMap<String, String>();
      
      map.put("reply_idx", reply_idx);
      map.put("content", content);
      
      replydao.update_Reply(map);
      
      return mav;
   }*/
   
   @RequestMapping("/delete_Reply.do")
   public ModelAndView delete_Reply(@RequestParam("reply_idx")int reply_idx){
      replydao.delete_Reply(reply_idx);
      
      ModelAndView mav = new ModelAndView();
      
      mav.setViewName("main/main_view");
      
      return mav;
   }
}