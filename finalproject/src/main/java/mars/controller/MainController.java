package mars.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import mars.content.model.ContentDTO;
import mars.feed.model.FeedDAO;
import mars.reply.model.MyHomeReplyDTO;
import mars.reply.model.ReplyDAO;
import mars.reply.model.ReplyDTO;
import mars.content.model.ContentDAO;
@Controller
public class MainController {
   @Autowired
   private ReplyDAO replydao;
   
   @Autowired
   private FeedDAO feedDao;
   
   @Autowired
   private ContentDAO cDao;

   @RequestMapping("main.do")
   public ModelAndView mainPage() {
      int idx = 12;
      
      HashMap<String, String> map = new HashMap<String, String>();
      map.put("idx", String.valueOf(idx));
      map.put("idx_like", "%"+idx+"%");
      
      List<ContentDTO> list = feedDao.showFeed(map);
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("list", list);
      mav.setViewName("main/main");
      return mav;
   }

   @RequestMapping("main_view.do")
   public ModelAndView main_viewPage(@RequestParam("content_idx")int content_idx) {
      List<MyHomeReplyDTO> list = replydao.replyList(content_idx);
      
      ModelAndView mav = new ModelAndView();
      String str = String.valueOf(content_idx);
      ContentDTO dto = cDao.contentOne(str);
      mav.addObject("list", list);
      mav.addObject("content",dto);
      mav.addObject("content_idx", content_idx);
      
      mav.setViewName("main/main_view");
      
      return mav;
   }
}