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
		int result = adDao.insert(command);
		String msg = result>0?"광고 신청을 완료했습니다.":"광고 신청이 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("ad/adMsg");
		return mav;
	}
	
	@RequestMapping("/goMyPage.do")
	public String goMyPage(){
		return "main/main";
	}
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		return "ad/checkCurAd";
	}
	
	@RequestMapping("/showCur.do")
	public ModelAndView showCur(@RequestParam("user_idx")String user_idx){
		int member_idx = Integer.parseInt(user_idx);
		List<ApplyAdDTO> list =	adDao.showCurList(member_idx);
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/showAve.do")
	public ModelAndView showAve(@RequestParam(value="ad_idx")Integer i){
		String str = adDao.showAveNum(i);
		ModelAndView mav = new ModelAndView();
		mav.addObject("i", i);
		mav.addObject("str", str);
		mav.setViewName("ad/checkCurAd");
		return mav;
	}
	
	@RequestMapping("/showNum.do")
	public ModelAndView showNum(@RequestParam("user_idx")String user_idx){
		int member_idx = Integer.parseInt(user_idx);
		List<ApplyAdDTO> list =	adDao.showNum(member_idx);
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		List<ApplyAdDTO> list =	adDao.adList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/list.do")
	public ModelAndView getList(@RequestParam("ad_idx")String ad_idx){
		List<ApplyAdDTO> list =	adDao.showList(ad_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("ad/showList");
		return mav;
	}
	
	@RequestMapping("/insertOkSign.do")
	public void insertOkSign(@RequestParam("ad_idx")String ad_idx){

		int adidx = Integer.parseInt(ad_idx);
		
			adDao.insertOkSign(adidx);
		
		
	//	ModelAndView mav = new ModelAndView();
	//	mav.addObject("ok", 1);
	//	mav.setViewName("ad/showList");
	//	return mav;
	}
	

}
