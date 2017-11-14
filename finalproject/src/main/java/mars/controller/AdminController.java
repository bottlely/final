package mars.controller;


import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.admin.model.AdminDAO;
import mars.friend.model.FriendDAO;
import mars.member.model.MemberDAO;
import mars.member.model.MemberDTO;
import mars.myHome.model.MyHomeDTO;
@Controller
public class AdminController {
   @Autowired
   private AdminDAO aDao;
   
   
   
   @RequestMapping("/admin.do")
   public ModelAndView adminMain() {
      
      
      ModelAndView mav = new ModelAndView();
      List<Integer> userrank = aDao.userrank();
      MyHomeDTO dto1 = aDao.userInfo1();
      MyHomeDTO dto2 = aDao.userInfo2();
      MyHomeDTO dto3 = aDao.userInfo3();
      int todayjoin = aDao.todayjoin();
      int ranksize1 = aDao.followingSize1();
      int ranksize2 = aDao.followingSize2();
      int ranksize3 = aDao.followingSize3();
      mav.addObject("ranksize1",ranksize1);
      mav.addObject("ranksize2",ranksize2);
      mav.addObject("ranksize3",ranksize3);
      mav.addObject("userInfo1",dto1);
      mav.addObject("userInfo2",dto2);
      mav.addObject("userInfo3",dto3);
      mav.addObject("userrank",userrank);
      mav.addObject("todayjoin",todayjoin);
      mav.setViewName("admin/admin_main");
      return mav;
   }
  @RequestMapping("/admin_m_u.do")
   public ModelAndView admin_m_u() {
      List<MemberDTO> list = aDao.admin_member();
      
      ModelAndView mav = new ModelAndView();
      
      mav.addObject("list", list);

      mav.setViewName("admin/admin_member_user");
      
      return mav;
   }

   @RequestMapping("/admin_memberDelete.do")
   public ModelAndView admin_memberDelete(int idx){
      ModelAndView mav = new ModelAndView();
      
      int result = aDao.admin_memberDelete(idx);
      
      if(result > 0){
         aDao.ff_delete(idx);
      }
      
      String msg = result > 0 ? "탈퇴 성공" : "탈퇴 실패";
      
      mav.addObject("msg", msg);
      
      mav.setViewName("admin/admin_Msg");
      
      return mav;
   }
   
   @RequestMapping("/admin_nameSearch.do")
   public ModelAndView admin_nameSearch(@RequestParam("txt")String name){
      ModelAndView mav = new ModelAndView();
      
      List<MemberDTO> list = aDao.admin_nameSearch(name);
      
      mav.addObject("list", list);
      
      mav.setViewName("admin/admin_member_user");
      
      return mav;
   }
   
   @RequestMapping("/admin_idSearch.do")
   public ModelAndView admin_idSearch(@RequestParam("txt")String id){
      ModelAndView mav = new ModelAndView();
      
      List<MemberDTO> list = aDao.admin_idSearch(id);
      
      mav.addObject("list", list);
      
      mav.setViewName("admin/admin_member_user");
      
      return mav;
   }
   
   @RequestMapping("/detail_Search.do")
   public ModelAndView detail_Search(
         @RequestParam(value="startYear", required=true, defaultValue="0")String startYear,
         @RequestParam(value="endYear", required=true, defaultValue="0")String endYear,
         @RequestParam(value="city", required=true, defaultValue="a")String city, 
         @RequestParam(value="favorite_Movie", required=true, defaultValue="0")String favorite_Movie, 
         @RequestParam(value="favorite_Sport", required=true, defaultValue="0")String favorite_Sport, 
         @RequestParam(value="favorite_Fashion", required=true, defaultValue="0")String favorite_Fashion, 
         @RequestParam(value="favorite_Beauty", required=true, defaultValue="0")String favorite_Beauty, 
         @RequestParam(value="favorite_Travel", required=true, defaultValue="0")String favorite_Travel, 
         @RequestParam(value="favorite_Music", required=true, defaultValue="0")String favorite_Music, 
         @RequestParam(value="favorite_Dance", required=true, defaultValue="0")String favorite_Dance, 
         @RequestParam(value="favorite_Food", required=true, defaultValue="0")String favorite_Food, 
         @RequestParam(value="man", required=true, defaultValue="6")int man,
         @RequestParam(value="woman", required=true, defaultValue="6")int woman){
      ModelAndView mav = new ModelAndView();
      
      HashMap map = new HashMap<String, String>();
      
      map.put("startYear", startYear);
      map.put("endYear", endYear);
      map.put("man", man);
      map.put("woman", woman);
      map.put("city", city);
      map.put("favorite_movie", favorite_Movie);
      map.put("favorite_sport", favorite_Sport);
      map.put("favorite_fashion", favorite_Fashion);
      map.put("favorite_beauty", favorite_Beauty);
      map.put("favorite_travel", favorite_Travel);
      map.put("favorite_music", favorite_Music);
      map.put("favorite_dance", favorite_Dance);
      map.put("favorite_food", favorite_Food);

      if(city.equals("city")){
         List<MemberDTO> list = aDao.noCity_Detail_Search(map);
      }else{
         List<MemberDTO> list = aDao.detail_Search(map);
      }
      mav.setViewName("admin/admin_member_user");
      
      return mav;
   }
   
   @RequestMapping("/admin_m_b.do")
   public String admin_m_b() {
      return "admin/admin_member_busi";
   }
   @RequestMapping("/admin_d_u.do")
   public ModelAndView admin_d_u() {
      ModelAndView mav = new ModelAndView();
      int favor_movie = aDao.favor_movie();
      int favor_dance = aDao.favor_dance();
      int favor_sport = aDao.favor_sport();
      int favor_travel = aDao.favor_travel();
      int favor_fashion = aDao.favor_fashion();
      int favor_food = aDao.favor_food();
      int favor_music = aDao.favor_music();
      int favor_beauty = aDao.favor_beauty();
      int gender_1 = aDao.gender_1();
      int gender_2 = aDao.gender_2();
      int girl1 = aDao.girl1();
      int man1 = aDao.man1();
      int girl2 = aDao.girl2();
      int man2 = aDao.man2();
      int girl3 = aDao.girl3();
      int man3 = aDao.man3();
      int girl4 = aDao.girl4();
      int man4 = aDao.man4();
      int others = aDao.others();
      
      String seoul = aDao.seoul();
      String suwon = aDao.suwon();
      String daejeon = aDao.daejeon();
      String daegu = aDao.daegu();
      String busan = aDao.busan();
      String incheon = aDao.incheon();
      String ilsan= aDao.ilsan();
      int allcount=aDao.allcount();
      int count7=aDao.count7();
      int count6=aDao.count6();
      int count5=aDao.count5();
      int count4=aDao.count4();
      int count3=aDao.count3();
      int count2=aDao.count2();
      int count1=aDao.count1();
      mav.addObject("movie",favor_movie);
      mav.addObject("dance",favor_dance);
      mav.addObject("sport",favor_sport);
      mav.addObject("travel",favor_travel);
      mav.addObject("fashion",favor_fashion);
      mav.addObject("food",favor_food);
      mav.addObject("music",favor_music);
      mav.addObject("beauty",favor_beauty);
      mav.addObject("gender1",gender_1);
      mav.addObject("gender2",gender_2);
      mav.addObject("girl1",girl1);
      mav.addObject("girl2",girl2);
      mav.addObject("girl3",girl3);
      mav.addObject("girl4",girl4);
      mav.addObject("allcount",allcount);
      mav.addObject("man1",man1);
      mav.addObject("man2",man2);
      mav.addObject("man3",man3);
      mav.addObject("man4",man4);
      mav.addObject("seoul",seoul);
      mav.addObject("suwon",suwon);
      mav.addObject("ilsan",ilsan);
      mav.addObject("daegu",daegu);
      mav.addObject("incheon",incheon);
      mav.addObject("daejeon",daejeon);
      mav.addObject("busan",busan);
      mav.addObject("others",others);
      mav.addObject("count7",count7);
      mav.addObject("count6",count6);
      mav.addObject("count5",count5);
      mav.addObject("count4",count4);
      mav.addObject("count3",count3);
      mav.addObject("count2",count2);
      mav.addObject("count1",count1);
      mav.setViewName("admin/admin_data_user");
    
      return mav;
   }
   @RequestMapping("/admin_d_b.do")
   public String admin_d_b() {
      return "admin/admin_data_busi";
   }
   @RequestMapping("/admin_c.do")
   public String admin_c() {
      return "admin/admin_customer";
   }
   @RequestMapping("/admin_p.do")
   public String admin_p() {
      return "admin/admin_profile";
   }
}