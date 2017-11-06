package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import mars.friend.model.*;

import java.util.*;

@Controller
public class FriendController {
	
	@Autowired
	private FriendDAO friendDao;
	
	/**following*/
	@RequestMapping("/following.do")
	public ModelAndView addFollowing(MemberDTO dto) {
		//int result = mdao.memberJoin(dto);
		//tring msg = result>0?"Success":"Fail";
		ModelAndView mav = new ModelAndView();
		//mav.addObject("msg", msg);
		//mav.setViewName("member/memberMsg");
		return mav;
		
	}
	
	@RequestMapping("/main_frList.do")
	public ModelAndView followingList(@RequestParam("user_idx")int user_idx) {
		System.out.println("idx: "+user_idx);
		List<MemberDTO> list1 = friendDao.followingList(user_idx);
		List<MemberDTO> list2 = friendDao.followerList(user_idx);
		List<MemberDTO> list3 = friendDao.blackList(user_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.setViewName("main/main_frList");
		return mav;
	}
	
	@RequestMapping("/friend_search.do")
	public ModelAndView searchResult(@RequestParam("user_idx")int user_idx, @RequestParam("search_name")String search_name) {
		System.out.println("name: "+search_name);
		System.out.println("idx: "+user_idx);
		List<MemberDTO> list4 = friendDao.searchNameList(search_name, user_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("resultList", list4);
		mav.addObject("user_idx", 9);
		mav.setViewName("main/main_frList");
		return mav;
	}
}
