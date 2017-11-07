package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.htag.model.htagDAO;
import mars.htag.model.htagDTO;
import mars.member.model.MemberDTO;
import mars.search.model.SearchDAO;

@Controller
public class SearchController {
	
	@Autowired
	private SearchDAO searchdao;
	
	@Autowired
	private htagDAO htagdao;
	
	@RequestMapping("/membersearch.do")
	public ModelAndView memberSearch(@RequestParam("name")String name){
		ModelAndView mav = new ModelAndView();
		
		List<MemberDTO> list = searchdao.memberSearch(name);
		
		mav.addObject("name", name);
		
		mav.addObject("find", list);
		
		mav.setViewName("search/membersearch");
		
		return mav;
	}
	
	@RequestMapping("/htagSearch.do")
	public ModelAndView htagSearch(@RequestParam("name")String name){
		ModelAndView mav = new ModelAndView();
		
		List<htagDTO> list = htagdao.htagSearch(name);
		
		mav.addObject("name", name);
		
		mav.addObject("find", list);
		
		mav.setViewName("/search/htagSearch");
		
		return mav;
	}
}
