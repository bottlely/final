package mars.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.ad.model.ApplyAdDAO;
import mars.ad.model.ApplyAdDTO;


@Controller
public class AdController {
	
	@Autowired
	private ApplyAdDAO adDao;
	
	@RequestMapping("/applyAdForm.do")
	public String adJoinForm(){
		
		return "ad/applyAd";
	}
	
	
	@RequestMapping("/applyAdOk.do")
	public ModelAndView acceptJoinForm(ApplyAdDTO adDto){
		
		int result = adDao.insert(adDto);
		String msg = result>0?"광고 신청을 완료했습니다.":"광고 신청이 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("ad/adMsg");
		return mav;
	}
	
	@RequestMapping("/goMyPage.do")
	public String goMyPage(){
		//광고 신청 후 돌아갈 page
		return "";
	}
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		
		ModelAndView mav = new ModelAndView();
		
		
		
		return "ad/checkCurAd";
	}
	
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		
		List<ApplyAdDTO> list =	adDao.adList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	

}
