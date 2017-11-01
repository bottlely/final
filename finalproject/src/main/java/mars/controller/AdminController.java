package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/admin.do")
	public String adminMain() {
		return "admin/admin_main";
	}
	@RequestMapping("/admin_m_u.do")
	public String admin_m_u() {
		return "admin/admin_member_user";
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
