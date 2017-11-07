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
	
	
	@RequestMapping(value="/myHomeForm.do")
	public ModelAndView myHomeForm(@RequestParam("useridx")String member_idx) {
		
		mhdao.visitorUpdate(member_idx);
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mhdto", mhdto);
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
	@RequestMapping("/profileUploadForm.do")
	public String profileUploadForm() {
		return "myPage/more/profileUpload";
	}
	@RequestMapping("/backgroundUploadForm.do")
	public String backgroundUploadForm() {
		return "myPage/more/backgroundUpload";
	}
	@RequestMapping("/introUploadForm.do")
	public String introUploadForm() {
		return "myPage/more/introUpload";
	}
	
	@RequestMapping("/moreFFHomeForm.do")
	public ModelAndView moreMyHomeForm(@RequestParam("ffidx")int ffidx,@RequestParam("ffid")String ffid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("ffidx", ffidx);
		mav.addObject("ffid", ffid);
		mav.setViewName("myPage/more/moreFFHome");
		return mav;
	}
	
	@RequestMapping("/reportUserForm.do")
	public ModelAndView reportUserForm(@RequestParam("toIdx")int toIdx,@RequestParam("toId")String toId) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("toIdx",toIdx);
		mav.addObject("toId",toId);
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
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "ok!" : "no!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
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
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "ok!" : "no";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
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
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "ok!" : "no!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
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
