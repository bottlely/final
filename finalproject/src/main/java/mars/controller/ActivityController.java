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
	
	@RequestMapping("/activityListForm.do")
	public String activityListForm(@RequestParam("idx")int idx) {
		return "main/feedList";
	}
	
	@RequestMapping("/activityList.do")
	public ModelAndView activityList(@RequestParam("idx")int idx) {
		List<ActivityDTO> list = actDao.ac_list(idx);
		
		ModelAndView mav = new ModelAndView("marsJson", "feed", list);
		return mav;
	}
	
	@RequestMapping("/activityCount.do")
	public ModelAndView activityCount(@RequestParam("idx")int idx) {
		int count  = actDao.ac_list_count(idx);
		
		ModelAndView mav = new ModelAndView("marsJson", "count", count);
		return mav;
	}
	
}
