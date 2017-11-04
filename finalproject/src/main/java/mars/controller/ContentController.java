package mars.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import mars.content.model.*;
import mars.myHome.model.*;

@Controller
public class ContentController {
	
	@Autowired
	private ContentDAO cdao;

	@Autowired
	private MyHomeDAO mhdao;
	
	@RequestMapping("/contentCategory.do")
	public String contentCategory() {
		return "myPage/content/contentCategory";
	}
	
	@RequestMapping("contentUploadForm.do")
	public ModelAndView contentUploadForm(@RequestParam("useridx")String member_idx,
			@RequestParam("type")int type,HttpServletRequest req) {
		
		MyHomeDTO dto = mhdao.myHomeSource(member_idx);
	
		String path =  null;
		
		switch(type){
			case 1: path = "myPage/content/uploadPhoto"; break;
			case 2: path = "myPage/content/uploadVideo"; break;
			case 3: path = "myPage/content/uploadText"; break;
			case 4: path = "myPage/content/uploadCam"; break;
		}
		
		String realPath = req.getSession().getServletContext().getRealPath("");
		realPath = realPath.replaceAll("\\\\","/");
		realPath += "/myHomeFolder/content/";
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("writer", dto.getName());
		mav.addObject("dir",realPath);
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping("UploadContent.do")
	public ModelAndView UploadContent(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("writer", "");
		mav.setViewName("");
		return mav;
	}

}
