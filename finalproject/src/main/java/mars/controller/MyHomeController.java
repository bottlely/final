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


//********* member_idx_temp �닔�젙 �븘�슂
//********* 媛��엯怨� �룞�떆�뿉 myPage�깮�꽦 �븘�슂 (default �씠誘몄� 寃쎈줈 �궫�엯)

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
		String msg = result > 0 ? "�뾽濡쒕뱶 �꽦怨�!" : "�뾽濡쒕뱶 �떎�뙣!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}
	
	@RequestMapping("/profileUpload.do")
	public ModelAndView profileUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("useridx");
		MultipartFile profile = req.getFile("profile");
		String type = "profile_img";
		
		copyInto(member_idx,type,profile,req2);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx);
		info.put("type", type);
		info.put("path", profile.getOriginalFilename());
		int result = mhdao.profileUpload(info);
	
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "�뾽濡쒕뱶 �꽦怨�!" : "�뾽濡쒕뱶 �떎�뙣!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}
	
	@RequestMapping("/backgroundUpload.do")
	public ModelAndView backgroundUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("useridx");
		MultipartFile profile = req.getFile("background");
		String type = "background_img";
		
		copyInto(member_idx,type,profile,req2);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx);
		info.put("type", type);
		info.put("path", profile.getOriginalFilename());
		int result = mhdao.backgroundUpload(info);
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "�뾽濡쒕뱶 �꽦怨�!" : "�뾽濡쒕뱶 �떎�뙣!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}

	
	/**癰귣벊沅쀦꽴占쏙옙�졃筌롫뗄苑뚳옙諭�*/
	public void copyInto(String writer,String type,MultipartFile upload,HttpServletRequest req2){
		
		String filename= upload.getOriginalFilename();
		System.out.println("占쎌궞�뵳怨쀬뵠:"+writer+"\n占쎌궞�뵳怨좊솁占쎌뵬筌륅옙:"+filename);
		
		try {
			byte bytes[] = upload.getBytes(); //占쎈솁占쎌뵬 占쎌뜚癰귨옙
			
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			
			File newfile = new File(realPath+"/myHomeFolder/"+type+"/"+filename);
			
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes); //癰귣벊沅�
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
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "변경 완료!" : "변경 실패!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}

}
