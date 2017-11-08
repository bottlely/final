package mars.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.email.model.MailService;
import mars.member.model.MemberDAO;

@Controller
public class MailController {
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private MemberDAO mdao;

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	
	/*Sending Email*/
	
	@RequestMapping("/sendEmail.do")
	public ModelAndView sendEmail(HttpSession session, @RequestParam String id) {
		int randomCode = new Random().nextInt(10000) + 1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);

		String subject = "Email Confirmation Code";
		StringBuilder sb = new StringBuilder();
		sb.append("The Confirmation Code is : ").append(joinCode).append(":) .");
		boolean check = mailService.send(subject, sb.toString(), "stillaway91@gmail.com", id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", check);
		mav.setViewName("member/joincomplete");
		return mav;
	}
	
	@RequestMapping("/pwdSend.do")
	public ModelAndView pwdSend(HttpSession session, @RequestParam("id") String id) {
		String pwd = mdao.pwdCheck(id);
		String subject = "MARS 비밀번호 찾기";
		StringBuilder sb = new StringBuilder();
		sb.append("비밀번호는 ").append("<< "+pwd+" >>").append(" 입니다.");
		boolean check = mailService.send(subject, sb.toString(), "stillaway91@gmail.com", id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", check);
		mav.setViewName("member/joincomplete");
		return mav;
	}
	

}
