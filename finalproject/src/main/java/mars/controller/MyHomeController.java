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


//********* member_idx_temp 수정 필요
//********* 가입과 동시에 myPage생성 필요 (default 이미지 경로 삽입)

@Controller
public class MyHomeController{
	
	@Autowired
	private MyHomeDAO mhdao;
	
	String member_idx_temp = "3";
	
	@RequestMapping("/myHomeForm.do")
	public ModelAndView myHomeForm(HttpServletRequest req) {
		
		mhdao.visitorUpdate(member_idx_temp);
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx_temp);
		
		String realPath = req.getSession().getServletContext().getRealPath("");
		realPath = realPath.replaceAll("\\\\","/");
		
		String profile = realPath+"/myHomeFolder/profile_img/"+mhdto.getProfile_img();
		String background = realPath+"/myHomeFolder/background_img/"+mhdto.getBackground_img();
		String intro = mhdto.getIntro();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("profile", profile);
		mav.addObject("background",background);
		mav.addObject("intro",intro);
		mav.setViewName("myPage/myHome");
		return mav;
	}
	
	@RequestMapping("/moreMyHomeForm.do")
	public String moreMyHomeForm() {
		return "myPage/more/moreMyHome";
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
	
	@RequestMapping(value="introUpload.do", method=RequestMethod.POST)
	public ModelAndView introUpload(@RequestParam("member_idx")String member_idx, @RequestParam("intro")String intro){
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx_temp);
		info.put("intro", intro);
		int result = mhdao.introUpload(info);
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "업로드 성공!" : "업로드 실패!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}
	
	@RequestMapping("/profileUpload.do")
	public ModelAndView profileUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("member_idx");
		MultipartFile profile = req.getFile("profile");
		String type = "profile_img";
		
		copyInto(member_idx_temp,type,profile,req2);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx_temp);
		info.put("type", type);
		info.put("path", profile.getOriginalFilename());
		int result = mhdao.profileUpload(info);
	
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "업로드 성공!" : "업로드 실패!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}
	
	@RequestMapping("/backgroundUpload.do")
	public ModelAndView backgroundUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String member_idx = req.getParameter("member_idx");
		MultipartFile profile = req.getFile("background");
		String type = "background_img";
		
		copyInto(member_idx_temp,type,profile,req2);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",member_idx_temp);
		info.put("type", type);
		info.put("path", profile.getOriginalFilename());
		int result = mhdao.backgroundUpload(info);
		
		ModelAndView mav = new ModelAndView();
		String msg = result > 0 ? "업로드 성공!" : "업로드 실패!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return mav;
	}

	
	/**蹂듭궗愿��젴硫붿꽌�뱶*/
	public void copyInto(String writer,String type,MultipartFile upload,HttpServletRequest req2){
		
		String filename= upload.getOriginalFilename();
		System.out.println("�삱由곗씠:"+writer+"\n�삱由고뙆�씪紐�:"+filename);
		
		try {
			byte bytes[] = upload.getBytes(); //�뙆�씪 �썝蹂�
			
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			
			File newfile = new File(realPath+"/myHomeFolder/"+type+"/"+filename);
			
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes); //蹂듭궗
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
