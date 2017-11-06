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
		//占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占� 占실억옙 占쌍댐옙占쏙옙 확占쏙옙!
		return "ad/applyAd";
	}
	
	
	@RequestMapping("/applyAdOk.do")
	public String acceptJoinForm(){
		//占쏙옙占쏙옙
		return "main/main";
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
