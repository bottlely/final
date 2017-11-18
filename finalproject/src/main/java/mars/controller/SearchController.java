package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.content.model.ContentDTO;
import mars.htag.model.htagDAO;
import mars.htag.model.htagDTO;
import mars.member.model.MemberDTO;
import mars.member.model.MyHomeMemberDTO;
import mars.myHome.model.MyHomeDAO;
import mars.myHome.model.MyHomeDTO;
import mars.search.model.SearchDAO;
import mars.search.model.SearchDTO;

@Controller
public class SearchController {
   
   @Autowired
   private SearchDAO searchdao;
   
   @Autowired
   private htagDAO htagdao;
   
   @Autowired
   private MyHomeDAO mhdao;
   
   @RequestMapping("/membersearch.do")
   public ModelAndView memberSearch(@RequestParam("name")String name){
      ModelAndView mav = new ModelAndView();
      
      List<MyHomeMemberDTO> list = searchdao.memberSearch(name);
      
      mav.addObject("name", name);
      
      mav.addObject("find", list);
      
      mav.setViewName("search/membersearch");
      
      return mav;
   }
   
   @RequestMapping("/mtagSearch.do")
   public ModelAndView htagSearch(@RequestParam("name")String name){
      List<MyHomeMemberDTO> list = searchdao.memberSearch(name);
         
         ModelAndView mav = new ModelAndView("marsJson", "find", list);

         return mav;
   }
   
   @RequestMapping("/search.do")
   public ModelAndView search(@RequestParam("name")String name){
      List<ContentDTO> list = htagdao.htagSearch(name);

      ModelAndView mav = new ModelAndView("marsJson", "find", list);
      
      return mav;
   }
}