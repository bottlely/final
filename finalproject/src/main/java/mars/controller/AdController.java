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
	public ModelAndView getAdRequest(HttpSession session,
			   @RequestParam Map<String, Object> paramMap){
		
//		List<ApplyAdDTO> list = adDao.adList();
//		int leng = list.size();
//		String str="";
//		str += "{person :[";
		
//		for(int i=0; i<leng; i++){
//			str += "{name:'"+list.get(i).getName()+"',";
//			str += " apply_date:'"+list.get(i).getApply_date()+"'}";
//		}
		
//		str += "]}";
//		System.out.println(str);
//		model.addAttribute("str", str);
//		return "/admin/json";
		
		List<ApplyAdDTO> list = adDao.adList();
		
//		for(int i=0; i<list.size(); i++){
			
//			paramMap.put("name", list.get(i).getName());
//			paramMap.put("apply_date", list.get(i).getApply_date());
//		}
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsonView");
		mav.addObject("list", list);
	//	mav.setViewName("admin/admin_member_busi");
		return mav;
	}
	

}
