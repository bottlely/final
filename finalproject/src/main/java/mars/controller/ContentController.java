package mars.controller;

import java.io.*;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import mars.content.model.*;
import mars.myHome.model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ContentController {
	
	@Autowired
	private ContentDAO cdao;

	@Autowired
	private MyHomeDAO mhdao;
	
	@RequestMapping("/contentUploadForm.do")
	public String myHomeForm() {
		return "myPage/content/cotentCategory";
	}
	
	@RequestMapping("/contentUploadForm.do")
	public ModelAndView myHomeForm(@RequestParam("useridx")String member_idx) {
		
		MyHomeDTO dto = mhdao.myHomeSource(member_idx);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("writer", dto.getName());
		
		mav.setViewName("myPage/content/contentUpload");
		return mav;
	}

}
