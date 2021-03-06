package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import mars.myHome.model.MyHomeDTO;
import mars.activity.model.ActivityDAO;
import mars.follow.model.FollowDAO;
import mars.friend.model.*;

import java.util.*;

@Controller
public class FriendController {
	
	@Autowired
	private FriendDAO friendDao;
	
	@Autowired
	private FollowDAO followDao;
	   
	@Autowired
	private ActivityDAO actDao;
	
	/**following*/
	@RequestMapping("/following.do")
	public ModelAndView addFollowing(FriendDTO dto) {
		int result = friendDao.following(dto);
		
		MyHomeDTO list = followDao.ac_name_img(dto.getUser2_idx());
		int res1 = actDao.ac_insert_followdb(dto, list.getName(), list.getProfile_img());
		int res2 = actDao.ac_follow_to_act(dto, list.getName(), list.getProfile_img());
		
		ModelAndView mav = new ModelAndView();
		String msg = result>0? "Success" : "Fail";
		mav.addObject("msg", msg);
		mav.setViewName("main/friendMsg");
		return mav;
	}
	
	@RequestMapping("/following_mypage.do")
	public ModelAndView addFollowing_mypage(FriendDTO dto) {
		int result = friendDao.following(dto);
		return new ModelAndView("marsJson","result",result);
	}
	
	/**unfollowing*/
	@RequestMapping("/deleteFriend.do")
	public ModelAndView unFollowing(FriendDTO dto) {
		int result = friendDao.deleteFriend(dto);
		
		actDao.ac_del_followdb(dto.getUser1_idx(), dto.getUser2_idx());
		actDao.ac_delete_follow(dto.getUser1_idx(), dto.getUser2_idx());
		
		ModelAndView mav = new ModelAndView();
		String msg = result>0? "Success" : "Fail";
		mav.addObject("msg", msg);
		mav.setViewName("main/friendMsg");
		return mav;
	}
	/**unfollowing_mypage*/
	@RequestMapping("/deleteFriend_mypage.do")
	public ModelAndView unFollowing_mypage(FriendDTO dto) {
		int result = friendDao.deleteFriend(dto);
		return new ModelAndView("marsJson","result",result);
	}
	
	@RequestMapping("/main_frList.do")
	public ModelAndView followingList(@RequestParam("member_idx")int member_idx) {
		//System.out.println("idx: "+user_idx);
		
		List<MemberDTO> list1 = friendDao.followingList(member_idx); //following
		List<MemberDTO> list2 = friendDao.followerList(member_idx); //follower
		List<MemberDTO> list3 = friendDao.blackList(member_idx);
		
		ModelAndView mav = new ModelAndView();
		
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
		int res = friendDao.unblock(user1_idx, user2_idx);
		List<MemberDTO> list1 = friendDao.followingList(user1_idx);
		List<MemberDTO> list2 = friendDao.followerList(user1_idx);
		List<MemberDTO> list3 = friendDao.blackList(user1_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("followingList", list1);
		mav.addObject("followerList", list2);
		mav.addObject("blackList", list3);
		mav.setViewName("main/main_frList");
		return mav;
	}
	
	@RequestMapping("/friend_unblock_mypage.do")
	public ModelAndView unblock_mypage(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		int res = friendDao.unblock(user1_idx, user2_idx);
		return new ModelAndView("marsJson","result",res);
	}
	
	@RequestMapping("/myhome_unblock.do")
	public ModelAndView myhomeUnblock(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		int res = friendDao.unblock(user1_idx, user2_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("myPage/more/myHome");
		return mav;
	}
	
	@RequestMapping("/friend_block.do")
	public ModelAndView block(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		int res = friendDao.block(user1_idx, user2_idx);
		
		ModelAndView mav = new ModelAndView();
		String msg = res>0? "Success" : "Fail";
		mav.addObject("msg", msg);
		mav.setViewName("main/friendMsg");
		return mav;
	}
	@RequestMapping("/friend_block_mypage.do")
	public ModelAndView block_mypage(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		int res = friendDao.block(user1_idx, user2_idx);
		return new ModelAndView("marsJson","result",res);
	}
	
	@RequestMapping("/removeFollower.do")
	public ModelAndView removeFollower(@RequestParam("user1_idx")int user1_idx, @RequestParam("user2_idx")int user2_idx) {
		int res = friendDao.removeFollower(user1_idx, user2_idx);
		
		ModelAndView mav = new ModelAndView();
		String msg = res>0? "Success" : "Fail";
		mav.addObject("msg", msg);
		mav.setViewName("main/friendMsg");
		return mav;
	}
	
}