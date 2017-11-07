package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mars.admin.model.AdminDAO;
import mars.member.model.MemberDAO;
import mars.member.model.MemberDTO;

@Controller
public class AdminController {
	@Autowired
	private AdminDAO aDao;
	
	
	@RequestMapping("/admin.do")
	public String adminMain() {
		return "admin/admin_main";
	}
	@RequestMapping("/admin_m_u.do")
	public ModelAndView admin_m_u() {
		List<MemberDTO> list = aDao.admin_member();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", list);
		
		mav.setViewName("admin/admin_member_user");
		
		return mav;
	}
	@RequestMapping("/admin_memberDelete.do")
	public ModelAndView admin_memberDelete(int idx){
		ModelAndView mav = new ModelAndView();
		
		int result = aDao.admin_memberDelete(idx);
		
		String msg = result > 0 ? "È¸¿ø Å»Åð ¼º°ø!" : "È¸¿ø Å»Åð ½ÇÆÐ!.";
		
		mav.addObject("msg", msg);
		
		mav.setViewName("admin/admin_Msg");
		
		return mav;
	}
	@RequestMapping("/admin_nameSearch.do")
	public ModelAndView admin_nameSearch(String name){
		ModelAndView mav = new ModelAndView();
		
		List<MemberDTO> list = aDao.admin_nameSearch(name);
		
		return mav;
	}
	@RequestMapping("/admin_idSearch.do")
	public ModelAndView admin_idSearch(String id){
		ModelAndView mav = new ModelAndView();
		
		List<MemberDTO> list = aDao.admin_idSearch(id);
		
		return mav;
	}
	@RequestMapping("/admin_m_b.do")
	public String admin_m_b() {
		return "admin/admin_member_busi";
	}
	@RequestMapping("/admin_d_u.do")
	public String admin_d_u() {
		return "admin/admin_data_user";
	}
	@RequestMapping("/admin_d_b.do")
	public String admin_d_b() {
		return "admin/admin_data_busi";
	}
	@RequestMapping("/admin_c.do")
	public String admin_c() {
		return "admin/admin_customer";
	}
	@RequestMapping("/admin_p.do")
	public String admin_p() {
		return "admin/admin_profile";
	}
}