package mars.controller;

import java.io.*;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	@RequestMapping("/myHomeForm.do")
	public String myHomeForm() {
		return "myPage/myHome";
	}
	
	@RequestMapping("/profileUpload.do")
	public String profileUpload(MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		String user_idx = req.getParameter("user_idx");
		MultipartFile profile = req.getFile("profile");
		String type = "profile_img";
		
		copyInto(user_idx,type,profile,req2);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("member_idx",user_idx);
		info.put("type", type);
		info.put("path", profile.getOriginalFilename());
		mhdao.introUpload(info);
	
		ModelAndView mav = new ModelAndView();
		String msg = "파일 업로드 성공!";
		mav.addObject("msg", msg);
		mav.setViewName("myPage/myHomeMsg");
		return "myPage/myHome";
	}

	
	/**蹂듭궗愿��젴硫붿꽌�뱶*/
	public void copyInto(String writer,String type,MultipartFile upload,HttpServletRequest req2){
		
		String filename= upload.getOriginalFilename();
		System.out.println("�삱由곗씠:"+writer+"\n�삱由고뙆�씪紐�:"+filename);
		
		try {
			byte bytes[] = upload.getBytes(); //�뙆�씪 �썝蹂�
			
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			
			System.out.println(realPath);
			
			File newfile = new File(realPath+"/myHomeFolder/"+type+"/"+filename);
			
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes); //蹂듭궗
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
