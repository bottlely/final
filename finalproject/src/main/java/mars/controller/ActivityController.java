package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.activity.model.*;
import mars.member.model.MemberDTO;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityDAO actDao;
	
	@RequestMapping(value = "/main_feedList.do", method = RequestMethod.GET)
	public ModelAndView activeList(int idx) {
		
		
		List<String> list1 = actDao.active_like(idx); 
		List<String> list2 = actDao.active_reply(idx);
		//System.out.println(list2.get(0));
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("like", list1);
		mav.addObject("reply", list2);
	
		mav.setViewName("main/feedList");
		return mav;
	}
}
