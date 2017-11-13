package mars.controller;

import java.util.*;

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
   public ModelAndView replyList(@RequestParam("content_idx") int content_idx) {
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);

      return mav;
   }

   @RequestMapping("/reply.do")
   public ModelAndView reply(@RequestParam("session_idx")int session_idx, @RequestParam("content") String content, @RequestParam("content_idx") int content_idx, ReplyDTO dto) {
      int ref = replydao.content_idx_ref(content_idx);
      
      int member_idx = replydao.member_idx(content_idx);
      
      HashMap map = new HashMap<String, String>();
      
      if(ref == 0){
         map.put("ref", 0);
      }
      map.put("ref", ref+1);
      map.put("content", content);
      map.put("content_idx", content_idx);
      map.put("session_idx", session_idx);
      map.put("member_idx", member_idx);
      
      replydao.addReply(map);
      
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);

      return mav;
   }

   @RequestMapping("/re_Reply.do")
   public ModelAndView re_Reply(@RequestParam("session_idx")int session_idx, @RequestParam("reply_idx") int reply_idx, @RequestParam("content") String content, @RequestParam("content_idx") int content_idx) {
      HashMap map = new HashMap<String, String>();
      
      int member_idx = replydao.member_idx(content_idx);
      int ref_idx_ref = replydao.reply_idx_ref(reply_idx);
      
      map.put("reply_idx_ref", ref_idx_ref);
      map.put("reply_idx", reply_idx);
      map.put("content_idx", content_idx);
      map.put("session_idx", session_idx);
      map.put("member_idx", member_idx);
      
      int rdto_ref = replydao.ref(reply_idx);
      int rdto_sunbun = replydao.sunbun(map);
      
      map.put("content", content);
      map.put("sunbun", rdto_sunbun + 1);
      map.put("ref", rdto_ref);
      
      replydao.re_AddReply(map);
      
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson");

      mav.addObject("list", list);
      mav.setViewName("main/main_view");

      return mav;
   }

   /*
    * @RequestMapping("/update_Reply.do") public ModelAndView
    * update_Reply(@RequestParam("reply_idx")int
    * reply_idx, @RequestParam("content")String content){ ModelAndView mav =
    * new ModelAndView();
    * 
    * HashMap map = new HashMap<String, String>();
    * 
    * map.put("reply_idx", reply_idx); map.put("content", content);
    * 
    * replydao.update_Reply(map);
    * 
    * return mav; }
    */

   @RequestMapping("/delete_Reply.do")
   public ModelAndView delete_Reply(@RequestParam("reply_idx") int reply_idx, @RequestParam("content_idx") int content_idx) {
      int ref = replydao.ref(reply_idx);
      
      System.out.println(ref);
      
      HashMap map = new HashMap<String, String>();
      
      map.put("reply_idx", reply_idx);
      map.put("ref", ref);
      
      replydao.delete_Reply(map);
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
      ModelAndView mav = new ModelAndView("marsJson");

      mav.addObject("content_idx", content_idx);
      mav.addObject("list", list);
      mav.setViewName("main/main_view");

      return mav;
   }
   
   @RequestMapping("/like.do")
   public ModelAndView like(@RequestParam("content_idx")int content_idx, @RequestParam("session_idx")int session_idx){
      int member_idx = replydao.member_idx(content_idx);
      
      HashMap map = new HashMap<String, String>();

      map.put("member_idx", member_idx);
      map.put("content_idx", content_idx);
      map.put("session_idx", session_idx);
      
      int result = replydao.likeSelect(map);
      
      if(result == 1){
         replydao.like_delete(map);
         
         //좋아요 누르기전 사진
      }else{
         replydao.like(map);
         
         //좋아요 누른 후 사진
      }
      
      ModelAndView mav = new ModelAndView("marsJson"); //, "", 변수 보내기
      
      return mav;
   }
}