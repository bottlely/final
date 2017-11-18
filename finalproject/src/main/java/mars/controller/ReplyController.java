package mars.controller;

import java.sql.Date;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.activity.model.ActivityDAO;
import mars.activity.model.ActivityDTO;
import mars.follow.model.FollowDAO;
import mars.myHome.model.MyHomeDTO;
import mars.reply.model.*;

@Controller
public class ReplyController {

   @Autowired
   private ReplyDAO replydao;
   
   @Autowired
   private FollowDAO followDao;
   
   @Autowired
	private ActivityDAO actDao;

   @RequestMapping("/replyList.do")
   public ModelAndView replyList(@RequestParam("content_idx") int content_idx) {
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);

      return mav;
   }

   @RequestMapping("/reply.do")
   public ModelAndView reply(@RequestParam("session_idx")int session_idx, 
                           @RequestParam("content") String content, 
                           @RequestParam("content_idx") int content_idx, ReplyDTO dto) {
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

      //getIdx
      ReplyDTO rdto = actDao.ac_getIdx(member_idx, session_idx, content_idx, content);
      ReplyDTO rdto_ref = actDao.ac_getRef(member_idx, session_idx, content_idx, content);
      
      MyHomeDTO mdto = followDao.ac_name_img(session_idx);
      
      actDao.ac_insert_reply(session_idx, member_idx, content_idx, content, mdto.getName(), mdto.getProfile_img(), rdto.getIdx(), rdto_ref.getRef(), 0);
      
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);

      return mav;
   }

   @RequestMapping("/re_Reply.do")
   public ModelAndView re_Reply(@RequestParam("session_idx")int session_idx, 
                              @RequestParam("reply_idx") int reply_idx, 
                              @RequestParam("content") String content, 
                              @RequestParam("content_idx") int content_idx) {
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
      
      //getIdx
      ReplyDTO rdto = actDao.ac_getIdx(member_idx, session_idx, content_idx, content);
      ReplyDTO rdto_ref2 = actDao.ac_getRef(member_idx, session_idx, content_idx, content);
      
      MyHomeDTO mdto = followDao.ac_name_img(session_idx);
      
      actDao.ac_insert_reply(session_idx, member_idx, content_idx, content, mdto.getName(), mdto.getProfile_img(), rdto.getIdx(), rdto_ref2.getRef(), 1);
      
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);

      ModelAndView mav = new ModelAndView("marsJson", "replyList", list);

      return mav;
   }

  
    @RequestMapping("/update_Reply.do") 
    public ModelAndView update_Reply(@RequestParam("reply_idx")int reply_idx, 
                                   @RequestParam("content")String content,
                                   @RequestParam("content_idx")int content_idx){ 
       HashMap map = new HashMap<String, String>();
       
       map.put("reply_idx", reply_idx); 
       map.put("content", content);
       
       replydao.update_Reply(map);
       
       int res = actDao.ac_reply_update(content, reply_idx);
       
       List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
       
       ModelAndView mav = new ModelAndView("marsJson", "replyList", list);
    
       return mav; 
   }

   @RequestMapping("/delete_Reply.do")
   public ModelAndView delete_Reply(@RequestParam("reply_idx") int reply_idx, 
                                  @RequestParam("content_idx") int content_idx) {
      int ref = replydao.ref(reply_idx);
      
      HashMap map = new HashMap<String, String>();
      
      map.put("reply_idx", reply_idx);
      map.put("ref", ref);
      map.put("content_idx", content_idx);
      
      int lev = replydao.lev(map);
      
      map.put("lev", lev);
      
      if(lev == 0){
         replydao.delete_Reply(map);
         replydao.delete_re_Reply(map);
         
         int res = actDao.ac_reply_delete(reply_idx, ref, content_idx, lev);
         int res2 = actDao.ac_re_reply_delete(ref, content_idx);
      }else{
         replydao.delete_Reply(map);
         
         int res = actDao.ac_reply_delete(reply_idx, ref, content_idx, lev);
      }
     
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
      
      ModelAndView mav = new ModelAndView("marsJson" , "replyList", list);

      return mav;
   }
   
   @RequestMapping("/like.do")
   public ModelAndView like(@RequestParam("content_idx")int content_idx, 
                          @RequestParam("session_idx")int session_idx){
      int member_idx = replydao.member_idx(content_idx);
      
      HashMap map = new HashMap<String, String>();

      map.put("member_idx", member_idx); //to_idx
      map.put("content_idx", content_idx);
      map.put("session_idx", session_idx); //from_idx
      
      int result = replydao.likeSelect(map);
      
      String img_Path;
     
      System.out.println(result);
      if(result == 1){
         replydao.like_delete(map);
         
         img_Path = "likeImg/unlike.png";
        
         actDao.ac_delete(session_idx, member_idx, content_idx);
      }else{
         replydao.like(map);
         
         img_Path = "likeImg/like.png";
         
         //like를 안눌렀을 때는 db에 데이타없어
         MyHomeDTO list = followDao.ac_name_img(member_idx);
         ReplyDTO rdto = actDao.ac_reply_list(member_idx, content_idx, session_idx);
         actDao.ac_insert_like(session_idx, member_idx, content_idx, rdto.getLikedate(), list.getName(), list.getProfile_img());
      }
      
      ModelAndView mav = new ModelAndView("marsJson", "img_Path", img_Path); //, "", 蹂��닔 蹂대궡湲�
      
      return mav;
   }
   
   @RequestMapping("likeList.do")
   public ModelAndView likeList(@RequestParam("session_idx")int session_idx,
                           @RequestParam("content_idx")int content_idx){
      HashMap map = new HashMap<String, String>();
      
      map.put("content_idx", content_idx);
      map.put("session_idx", session_idx);
      
      int result = replydao.likeSelect(map);
      
      String img_Path;
         
      if(result == 1){
         img_Path = "likeImg/like.png";
      }else{
         img_Path = "likeImg/unlike.png";
      }

      ModelAndView mav = new ModelAndView("marsJson", "img_Path", img_Path);
      
      return mav;
   }
}