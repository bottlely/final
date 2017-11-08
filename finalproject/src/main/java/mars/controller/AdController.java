package mars.controller;

import java.util.List;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView adJoinForm(){
		 ModelAndView mav = new ModelAndView();
	     mav.setViewName("ad/applyAd");
	     return mav;
	}
	
	@RequestMapping("/applyAd.do")
	public ModelAndView applyAd(@ModelAttribute("cmd")ApplyAdDTO command){	
		//만일 게시된 광고 이전, 즉 결제 이전 광고가 존재하면 신청 불가!
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
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		return "ad/checkCurAd";
	}
	
	
	@RequestMapping("/showCur.do")
	public ModelAndView showCur(){
		List<ApplyAdDTO> list =	adDao.showCurList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/showAve.do")
	public ModelAndView showAve(@RequestParam(value="ad_idx")Integer i){
		//ajax에서 보낸값 controller에서 바로 받는 방법(requestparam!)
		//System.out.println("ad_idx = "+i);
	//	List<ApplyAdDTO> list = adDao.showAveNum(i);
		String str = adDao.showAveNum(i);
		ModelAndView mav = new ModelAndView();
	//	System.out.println(str);
	//	Model model=null;
//		ModelAndView mav = new ModelAndView("marsJson","list",list);
	//	model.addAttribute("i", i);
		mav.addObject("i", i);
		mav.addObject("str", str);
		mav.setViewName("ad/checkCurAd");
//		return mav;
		
		return mav;
	}
	
	@RequestMapping("/showNum.do")
	public ModelAndView showNum(){
		List<ApplyAdDTO> list =	adDao.showNum();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		List<ApplyAdDTO> list =	adDao.adList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	

}
