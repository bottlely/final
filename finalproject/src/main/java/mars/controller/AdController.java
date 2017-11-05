package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mars.ad.model.ApplyAdDAO;
import mars.ad.model.ApplyAdDAOImple;
import mars.ad.model.ApplyAdDTO;


@Controller
public class AdController {
	
	//@Autowired
//	private ApplyAdDAO adDao;
	
	@RequestMapping("/applyAdForm.do")
	public String adJoinForm(){
		//������ ����� �Ǿ� �ִ��� Ȯ��!
		return "ad/applyAd";
	}
	
	
	@RequestMapping("/applyAdOk.do")
	public String acceptJoinForm(){
		//����
		return "main/main";
	}
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		ModelAndView mav = new ModelAndView();
		
		
		
		return "ad/checkCurAd";
	}
	
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		
		ApplyAdDAOImple adDao = new ApplyAdDAOImple();
		
		List<ApplyAdDTO> list = adDao.adList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("ad/getRequest");
		return mav;
	}
	

}
