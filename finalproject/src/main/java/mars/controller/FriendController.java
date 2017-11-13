package mars.controller;

import org.apache.catalina.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import mars.myHome.model.*;
import mars.friend.model.*;

import java.util.*;

@Controller
public class FriendController {
	
	@Autowired
	private FriendDAO friendDao;
	@Autowired
	private MyHomeDAO mhdao;
	
	/**following*/
	@RequestMapping("/following.do")
	public ModelAndView addFollowing(FriendDTO dto) {
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
	
	/*@RequestMapping("/removeFollower.do")
	public ModelAndView removeFollower(FriendDTO dto) {
		ModelAndView mav = new ModelAndView();
		
	}*/
	
	/*@RequestMapping("/test.do")
	public ModelAndView test(@RequestParam("user_idx")int user_idx) {
		List<MemberDTO> list1 = friendDao.followerList(user_idx);
		List<MemberDTO> list2 = friendDao.followingList(user_idx);
		//MyHomeDTO mhdto = mhdao.myHomeSource(String.valueOf(user_idx));
		ModelAndView mav = new ModelAndView();
		mav.addObject("followerList", list1);
		mav.addObject("followingList", list2);
		mav.setViewName("friend/test");
		return mav;
	}*/
	
	@RequestMapping("/main_frList.do")
	public ModelAndView followingList(@RequestParam("member_idx")int member_idx) {
		//System.out.println("idx: "+user_idx);
		HashMap<String, String> map = new HashMap<String, String>();
		
		List<MemberDTO> list1 = friendDao.followingList(member_idx); //following
		List<MemberDTO> list2 = friendDao.followerList(member_idx); //follower
		
		/*int max = list1.size();
		int min = list2.size();
		if(list1.size()<list2.size()) {
			max = list2.size();
			min = list1.size();
		}
		
		for(int i = 0; i < max; i++) {
			for(int j = 0; j < min; j++) {
				if(list1.get(i).getIdx()== list2.get(j).getIdx()) {
					map.put("name", list2.get(i).getName());
				}
			}
		}*/
		
		List<MemberDTO> list3 = friendDao.blackList(member_idx);
		List<MyPageFriendDTO> check_list = friendDao.check(member_idx);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("name", map);
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.setViewName("main/main_frList");
		return mav;
	}
	
	@RequestMapping("/friend_search.do")
	public ModelAndView searchResult(@RequestParam("member_idx")int member_idx, @RequestParam("search_name")String search_name) {
		List<MemberDTO> list1 = friendDao.followingList(member_idx);
		List<MemberDTO> list2 = friendDao.followerList(member_idx);
		List<MemberDTO> list3 = friendDao.blackList(member_idx);
		List<MemberDTO> list4 = friendDao.searchNameList(search_name, member_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.addObject("resultList", list4);
		mav.setViewName("main/main_frList");
		return mav;
	}
	
	@RequestMapping("/friend_unblock.do")
	public ModelAndView unblock(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		List<MemberDTO> list1 = friendDao.followingList(user1_idx);
		List<MemberDTO> list2 = friendDao.followerList(user1_idx);
		List<MemberDTO> list3 = friendDao.blackList(user1_idx);
		int res = friendDao.unblock(user1_idx, user2_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.setViewName("main/main_frList");
		return mav;
	}
	
}