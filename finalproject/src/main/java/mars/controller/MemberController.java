package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import java.util.*;

import javax.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO mdao;
	

/*	@Autowired
	private MailService mailService;*/
	
	@RequestMapping("/joinForm.do")
	public String memberJoinForm() {
		return "member/memberJoin";
	}
	
/*	@RequestMapping("/emailCheck.do")
	public String emailCheckForm() {
		return "member/emailCheck";
	}*/
	

	/*Sending Email*/
	
/*	public boolean sendEmail(HttpSession session, @RequestParam String email) {
		int randomCode = new Random().nextInt(10000)+1000;
		String joinCode = String.valueOf(randomCode);
		session.setAttribute("joinCode", joinCode);
		
		String subject = "이메일 인증 번호입니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("이메일 인증 번호는").append(joinCode).append("입니다.");
		return mailService.send(subject, sb.toString(), "stillaway91@gmail.com", email);
	}*/
	

	@RequestMapping("/join.do")
	public ModelAndView memberJoin(MemberDTO dto) {
		int result = mdao.memberJoin(dto);
		String msg = result>0?"Success":"Fail";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
	

	
	
}
