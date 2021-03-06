package mars.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("/agree.do")
	public String agreement() {
		return "member/agreement";
	}

	/*Sing-in*/
	@RequestMapping("/join.do")
	public ModelAndView memberJoin(MemberDTO dto) {
		int result = mdao.memberJoin(dto);
		MemberDTO dtoIdx = mdao.idxSearch(dto);
		int result2 = result > 0 ? mdao.myHomeCreate(dtoIdx) : -1;
		String msg = result2>0?"Success":"Fail";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
	
	/*id duplication check*/
	@RequestMapping("idCheck.do")
	public String idDuplCheck(@RequestParam("id")String id, HttpServletResponse resp, HttpServletRequest req,Model map) {
		int result = mdao.loginIdCheck(id);
		String text = "";
		if (result == 0) {
			text = "사용가능한 ID 입니다.";
		}else{
			text = "중복된 ID 입니다.";
		}
		map.addAttribute("msg",text);
		return "member/idMsg";
	}
	
	
	/*login Check*/
	
	@RequestMapping("/login.do")
	public ModelAndView loginCheck(@RequestParam("id")String userid, @RequestParam("pwd")String userpwd,
			HttpSession session, HttpServletResponse resp, HttpServletRequest req) {
		
		ModelAndView mav = new ModelAndView();
		int idCheckResult = mdao.loginIdCheck(userid);
		
		if(idCheckResult==1) {  // Id exist.
			String dbpwd = mdao.pwdCheck(userid);
			if(dbpwd.equals(userpwd)) {  //id&pwd correct!
				
				String msg = "";
				String gourl = "";
				/*login info save in Session*/
				MemberDTO dto = new MemberDTO();
				dto = mdao.getUserInfo(userid);
				String username = dto.getName();
				String useridx = Integer.toString(dto.getIdx());
				session.setAttribute("useridx",useridx);
				session.setAttribute("userid", userid);
				session.setAttribute("username", username);
				session.setAttribute("userEmail", dto.getId());
				
				if(dto.getIdx()==3) {
					msg = "관리자님 환영합니다";
					gourl = "admin.do";
				}else{
					msg = "로그인 성공";
					gourl = "main.do?idx="+useridx;
				}
				mav.addObject("msg", msg);
				mav.addObject("gourl", gourl);
				
				/*Cookie Save*/
				String saveid = req.getParameter("saveid");
				if(saveid==null||saveid.equals("")){
					Cookie ck = new Cookie("saveid", userid);
					ck.setMaxAge(0);
					resp.addCookie(ck);
				}else{
					Cookie ck = new Cookie("saveid", userid);
					ck.setMaxAge(60*60*24*30);
					resp.addCookie(ck);
				}
				
				
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
	
	/*Log-out*/
	
	@RequestMapping("/logout.do")
	public ModelAndView logout(HttpSession session){
		session.invalidate();
		String msg = "로그아웃 합니다.";
		String gourl = "index.do";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gourl",gourl);
		mav.setViewName("member/loginMsg");
		return mav;
	}
	
	/*Email-Check Form*/
	
	@RequestMapping("/ecForm.do")
	public String EmailCheckForm() {
		return "member/emailtest";
	}
	
	/*id pwd Search*/
	@RequestMapping("/pwdSrcForm.do")
	public String idpwdSrcForm() {
		return "member/pwdSrc";
	}
	


	
	
}
