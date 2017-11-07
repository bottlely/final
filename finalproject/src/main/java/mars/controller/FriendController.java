package mars.controller;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView addFollowing(FriendDTO dto) {
		//System.out.println("user1_idx: "+dto.getUser1_idx());
		//System.out.println("user2_idx: "+dto.getUser2_idx());
		int result = friendDao.following(dto);
		String msg = result>0? "Success" : "Fail";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("friend/friendMsg");
		return mav;
	}
	
	/**unfollowing & remove Follower*/
	@RequestMapping("/deleteFriend.do")
	public ModelAndView unFollowing(FriendDTO dto) {
		int result = friendDao.deleteFriend(dto);
		String msg = result>0? "Sucess" : "Fail";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("friend/friendMsg");
		return mav;
	}
	
	@RequestMapping("/test.do")
	public ModelAndView test(@RequestParam("user_idx")int user_idx) {
		List<MemberDTO> list1 = friendDao.followerList(user_idx);
		List<MemberDTO> list2 = friendDao.followingList(user_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("followerList", list1);
		mav.addObject("followingList", list2);
		mav.setViewName("friend/test");
		return mav;
	}
	
	@RequestMapping("/main_frList.do")
	public ModelAndView followingList(@RequestParam("user_idx")int user_idx) {
		//System.out.println("idx: "+user_idx);
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
		List<MemberDTO> list1 = friendDao.followingList(user_idx);
		List<MemberDTO> list2 = friendDao.followerList(user_idx);
		List<MemberDTO> list3 = friendDao.blackList(user_idx);
		List<MemberDTO> list4 = friendDao.searchNameList(search_name, user_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.addObject("resultList", list4);
		mav.setViewName("main/main_frList");
		return mav;
	}
}