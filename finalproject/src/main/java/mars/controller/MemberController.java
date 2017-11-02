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
	
	
	/*login Check*/
	
	public ModelAndView loginCheck(@RequestParam("id")String userid, @RequestParam("pwd")String userpwd,
			HttpSession session, HttpServletResponse resp, HttpServletRequest req) {
		
		ModelAndView mav = new ModelAndView();
		int idCheckResult = mdao.loginIdCheck(userid);
		
		if(idCheckResult==1) {  // Id exist.
			String dbpwd = mdao.pwdCheck(userid);
			if(dbpwd.equals(userpwd)) {  //id&pwd correct!
				String msg = "로그인 성공";
				String gourl = "main.do";
				mav.addObject("msg", msg);
				mav.addObject("gourl", gourl);
				
				/*login info save*/
				MemberDTO dto = new MemberDTO();
				dto = mdao.getUserInfo(userid);
				String username = dto.getName();
				session.setAttribute("userid", userid);
				session.setAttribute("username", username);
				
				
			}else{ //id ok but pwd wrong
				String msg = "ID or PWD 가 틀렸습니다.";
				String gourl = "index.do";
				mav.addObject("msg", msg);
				mav.addObject("gourl", gourl);
			}
			
		}else if(idCheckResult==0){ //id not exist
			String msg = "ID or PWD 가 틀렸습니다.";
			String gourl = "index.do";
			mav.addObject("msg", msg);
			mav.addObject("gourl", gourl);
			
		}else{
			String msg = "알수없는 에러, 고객센터 연락바람.";
			String gourl = "index.do";
			mav.addObject("msg", msg);
			mav.addObject("gourl", gourl);
		}
		mav.setViewName("member/loginMsg");
		return mav;
		
	}
	
	


	
	
}
