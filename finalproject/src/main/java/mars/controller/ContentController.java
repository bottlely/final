package mars.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import mars.content.model.*;
import mars.myHome.model.*;

@Controller
public class ContentController {
	
	@Autowired
	private ContentDAO cdao;

	@Autowired
	private MyHomeDAO mhdao;
	
	private List<String> photoType;
	
	private List<String> videoType;
	
	private boolean typeCheck;
	
	public ContentController() {
		
		super();
		
		photoType = new ArrayList<String>();
		
		videoType = new ArrayList<String>();
		
		typeCheck = false;
		
		photoType.add("image/pjpeg");
		photoType.add("image/jpeg");
		photoType.add("image/JPG");
		photoType.add("image/X-PNG");
		photoType.add("image/PNG");
		photoType.add("image/x-png");
	}

	@RequestMapping("/contentCategory.do")
	public String contentCategory() {
		return "myPage/content/contentCategory";
	}
	
	@RequestMapping("contentUploadForm.do")
	public ModelAndView contentUploadForm(@RequestParam("useridx")String member_idx,@RequestParam("type")int type) {
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
	
		String path =  null;
		
		switch(type){
			case 1: path = "myPage/content/uploadPhoto"; break;
			case 2: path = "myPage/content/uploadVideo"; break;
			case 3: path = "myPage/content/uploadText"; break;
			case 4: path = "myPage/content/uploadCam"; break;
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("writer", mhdto.getName());
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping("uploadPhoto.do")
	public ModelAndView uploadContent(@RequestParam("useridx")String member_idx,
			@RequestParam("content")String content,
			MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		
		String path = "";
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("idx",member_idx);
		
		Iterator<String> itr = req.getFileNames();
		
        while(itr.hasNext()){

            String uploadFile = itr.next();

            MultipartFile mFile = req.getFile(uploadFile);

            String fileName = mhdto.getMember_idx()+mhdto.getName()+System.currentTimeMillis()+mFile.getOriginalFilename();
            
            typeCheck = photoType.contains(mFile.getContentType());
            
            if(typeCheck){
            	copyInto(fileName,mFile,req2);
            	path += fileName+"?";
            	
            }else{
            	ModelAndView mav = new ModelAndView("marsJson","result","errorType");
        		return mav;
            }
        }
      
        info.put("path", path);	
        info.put("content", content);
        info.put("writer", mhdto.getName());
        int result = cdao.photoUpload(info);

        ModelAndView mav = new ModelAndView("marsJson","result","ok");
		return mav;
	}
	
	public void copyInto(String filename,MultipartFile upload,HttpServletRequest req2){
		
		try {
			byte bytes[] = upload.getBytes();
			
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			
			File newfile = new File(realPath+"/myHomeFolder/content/"+filename);
			
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
