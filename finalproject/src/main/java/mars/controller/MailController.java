package mars.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.email.model.MailService;

@Controller
public class MailController {
	
	@Autowired
	private MailService mailService;

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	
	/*Sending Email*/
	
	@RequestMapping("/sendEmail.do")
	public ModelAndView sendEmail(HttpSession session, @RequestParam String id) {
		System.out.println(id);
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
	

}