package mars.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import java.util.*;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO mdao;
	
	
	@RequestMapping("/joinForm.do")
	public String memberJoinForm() {
		return "member/memberJoin";
	}
	
	@RequestMapping("/emailCheck.do")
	public String emailCheckForm() {
		return "member/emailCheck";
	}


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
