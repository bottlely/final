package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mars.member.model.*;
import java.util.*;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO mdao;

	@RequestMapping("/join.do")
	public ModelAndView memberJoin(MemberDTO dto) {
		String id = dto.getId();
		System.out.println(id);
		int result = mdao.memberJoin(dto);
		String msg = result>0?"회원가입성공":"회원가입실패";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("member/memberMsg");
		return mav;
	}
}
