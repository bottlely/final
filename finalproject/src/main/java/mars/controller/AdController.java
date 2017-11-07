package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mars.ad.model.ApplyAdDAO;
import mars.ad.model.ApplyAdDTO;


@Controller
public class AdController {
	
	@Autowired
	private ApplyAdDAO adDao;
	
	@RequestMapping("/applyAdForm.do")
	public ModelAndView adJoinForm(){
		
		 ModelAndView mav = new ModelAndView();
	     mav.setViewName("ad/applyAd");
	     return mav;
	}
	
	@RequestMapping("/applyAd.do")
	public ModelAndView applyAd(@ModelAttribute("cmd")ApplyAdDTO command){
		System.out.println("come2");
		System.out.println("1"+command.getFavor_sport()+"2"+command.getFavor_beauty()+command.getFavor_dance()+command.getFavor_fashion()+command.getFavor_food()+command.getFavor_music());
		
		
		
		int result = adDao.insert(command);
		String msg = result>0?"광고 신청을 완료했습니다.":"광고 신청이 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("ad/adMsg");
		return mav;
	}
	
	@RequestMapping("/goMyPage.do")
	public String goMyPage(){
		//광고 신청 후 돌아갈 page
		return "main/main";
	}
	
//	@RequestMapping("/checkCurAd.do")
//	public String checkCurAd(){
		
//		ModelAndView mav = new ModelAndView();	
		
		
//		return "ad/checkCurAd";
//	}
	
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		
		List<ApplyAdDTO> list =	adDao.adList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	

}
