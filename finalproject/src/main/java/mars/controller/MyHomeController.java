package mars.controller;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import mars.content.model.ContentDAO;
import mars.content.model.ContentDTO;
import mars.myHome.model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
public class MyHomeController{
	
	@Autowired
	private MyHomeDAO mhdao;
	
	@Autowired
	private ContentDAO cdao;
	
	@RequestMapping(value="/myHomeForm.do")
	public ModelAndView myHomeForm(@RequestParam("useridx")String member_idx,
			@RequestParam(value="cp",defaultValue="1")int cp,
			@RequestParam(value="category",defaultValue="0")int category) {
		
		mhdao.visitorUpdate(member_idx);
		
		List<ContentDTO> contentList = cdao.contentList(member_idx);
		//int totalCnt = contentList.size();
		
		List<String> imgList = new ArrayList<String>();
		List<String> videoList = new ArrayList<String>();
		
		for(int i=0; i < contentList.size(); i++){
			int content_category = contentList.get(i).getCategory();
			
				switch(content_category){
				
					case 1 : {imgList.addAll(Arrays.asList(contentList.get(i).getPath().split(",")));} break;
					
					case 2 : {String path = contentList.get(i).getPath();
							  videoList.add(path.substring(0, path.indexOf("."))+ ".jpg");} break;
							  
					case 3 : {} break;
					case 4 : {} break;
					default : {};
				}
		}
		//int listSize = 9;
		//int pageSize = 1; 
		
		//String pageStr = mars.page.PageModule.makePage("bbsList.do", totalCnt, listSize, pageSize, cp);
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mhdto", mhdto);
		mav.addObject("cdao", cdao);
		//mav.addObject("totalCnt", totalCnt);
		mav.addObject("imgList", imgList);
		mav.addObject("videoList", videoList);
		mav.setViewName("myPage/myHome");
		return mav;
	}
	
	@RequestMapping("/moreMyHomeForm.do")
	public ModelAndView moreMyHomeForm(@RequestParam("useridx")String member_idx) {
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mhdto", mhdto);
		mav.setViewName("myPage/more/moreMyHome");
		return mav;
	}
	
	@RequestMapping("/moreUploadForm.do")
	public String moreUploadForm(@RequestParam("type")int type) {
		
		String path =  null;
		
		switch(type){
		case 1: path = "myPage/more/backgroundUpload"; break;
		case 2: path = "myPage/more/profileUpload"; break;
		case 3: path = "myPage/more/introUpload"; break;
		}
		
		return path;
	}
	
	@RequestMapping("/reportUserForm.do")
	public ModelAndView reportUserForm(@RequestParam("toIdx")int toIdx,@RequestParam("toName")String toName) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("toIdx",toIdx);
		mav.addObject("toName",toName);
		mav.setViewName("myPage/more/reportUser");
		return mav;
	}
	@RequestMapping("/reportUser.do")
	public ModelAndView reportUser(@RequestParam("report")String report,
			@RequestParam("toIdx")String toIdx,
			@RequestParam("fromIdx")String fromIdx) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("ffIdx", toIdx);
		mav.addObject("msg", "신고 로직 필요!");
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}
	
	@RequestMapping(value="introUpload.do", method=RequestMethod.POST)
	public ModelAndView introUpload(@RequestParam("useridx")String member_idx, @RequestParam("intro")String intro){
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx);
		info.put("intro", intro);
		int result = mhdao.introUpload(info);
		 ModelAndView mav = new ModelAndView("marsJson","result",result);
		return mav;
	}
	
	@RequestMapping("/profileUpload.do")
	public ModelAndView profileUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("useridx");
		MultipartFile profile = req.getFile("profile");
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx);
		
		if(profile != null){
		
		String type = "profile_img";
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		String filename= member_idx+mhdto.getName()+profile.getOriginalFilename();
		
		copyInto(filename,type,profile,req2);
		
		info.put("path", filename);
		
		}else{
			info.put("path", "default_profile.jpg");
		}
		
		int result = mhdao.profileUpload(info);
		 ModelAndView mav = new ModelAndView("marsJson","result",result);
		return mav;
	}
	
	@RequestMapping("/backgroundUpload.do")
	public ModelAndView backgroundUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("useridx");
		MultipartFile background = req.getFile("background");
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx);
		
		if(background != null){
			
			String type = "background_img";
				
			MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
			String filename= member_idx+mhdto.getName()+background.getOriginalFilename();
			
			copyInto(filename,type,background,req2);
			
			info.put("path", filename);
		}else{
			info.put("path", "default_background.jpg");
		}
		
		int result = mhdao.backgroundUpload(info);
		 ModelAndView mav = new ModelAndView("marsJson","result",result);
		return mav;
	}

	
	public void copyInto(String filename,String type,MultipartFile upload,HttpServletRequest req2){
		
		try {
			byte bytes[] = upload.getBytes();
			
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			
			File newfile = new File(realPath+"/myHomeFolder/"+type+"/"+filename);
			
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/*비공개 설정하기*/
	@RequestMapping("/openCoverage.do")
	public ModelAndView openCoverage(@RequestParam("useridx")String useridx,@RequestParam("range")int range){
		
		int member_idx = Integer.parseInt(useridx);
		
		HashMap<String, Integer> info = new HashMap<String, Integer>();
		info.put("member_idx",member_idx);
		info.put("range", range);
		int result = mhdao.openCoverage(info);
		
 		ModelAndView mav = new ModelAndView("marsJson","result",result);
		return mav;
	}

}
