package mars.controller;

import java.io.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import mars.content.model.*;
import mars.coverage.model.CoverageDTO;
import mars.friend.model.FriendDAO;
import mars.friend.model.FriendDTO;
import mars.group.model.GroupDTO;
import mars.htag.model.htagDAO;
import mars.member.model.MemberDAO;
import mars.member.model.MemberDTO;
import mars.mtag.model.mtagDAO;
import mars.myHome.model.*;
import mars.setting.model.SettingDAO;



@Controller
public class ContentController {
	
	@Autowired
	private ContentDAO cdao;

	@Autowired
	private MyHomeDAO mhdao;
	
	@Autowired
	private FriendDAO friendDao;
	
	@Autowired
	private SettingDAO settingDao;
	
	@Autowired
	private MemberDAO mdao;
	
	@Autowired
	private htagDAO htagdao;
	
	@Autowired
	private mtagDAO mtagdao;
	
	public ContentController() {
		
		super();
	}

	@RequestMapping("/contentCategory.do")
	public String contentCategory() {
		return "myPage/content/contentCategory";
	}
	
	@RequestMapping("/contentUploadForm.do")
	public ModelAndView contentUploadForm(@RequestParam("useridx")String member_idx,@RequestParam("type")int type) {
		
		ModelAndView mav = new ModelAndView();
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		
		List<MemberDTO> followerList = friendDao.followerList(Integer.parseInt(member_idx));
		
		List<FriendDTO> fdtoList = settingDao.getGroupList(Integer.parseInt(member_idx));
		
		HashMap<String,List<MemberDTO>> groupList = new HashMap<String, List<MemberDTO>>();
		HashMap<String,Integer> groupList_idx = new HashMap<String,Integer>();
		
		for(FriendDTO fdto : fdtoList){
			
			int groupIdx = fdto.getIdx();
			List<GroupDTO> groupMembers = settingDao.showGroup(groupIdx);
			
			List<MemberDTO> group = new ArrayList<MemberDTO>();
			String groupname = null;
			
			for(GroupDTO gdto : groupMembers){
				
				//key
				groupname = gdto.getGroup_name(); 
				
				//values
				int member = gdto.getIdx_to();
				MemberDTO mdto = mdao.getUserInfo_idx(member);
				
				group.add(mdto);
			}
			groupList.put(groupname, group);
			groupList_idx.put(groupname, groupIdx);
		}
		
		String path =  null;
		
		switch(type){
			case 1: path = "myPage/content/uploadPhoto"; break;
			case 2: path = "myPage/content/uploadVideo"; break;
			case 3: path = "myPage/content/uploadText"; break;
			case 4: path = "myPage/content/uploadCam"; break;
		}
		
		mav.addObject("writer", mhdto.getName());
		mav.addObject("profile", mhdto.getProfile_img());
		mav.addObject("followerList", followerList);
		mav.addObject("groupList",groupList);
		mav.addObject("groupList_idx",groupList_idx);
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping("/uploadText.do")
	public ModelAndView uploadText(@RequestParam("useridx")String member_idx,
			@RequestParam("htag")String htag,
			@RequestParam("mtag")String mtag,
			@RequestParam("title")String title,
			@RequestParam(value="coverage_list_group",required=false)String cl_group,
			@RequestParam(value="coverage_list",required=false)String cl,
			@RequestParam("coverage_state")String cs,
			@RequestParam("profile")String profile,
			@RequestParam("content")String content) {
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("idx",member_idx);
		info.put("path", title);	
        info.put("content", content);
        info.put("writer", mhdto.getName());
        info.put("type", "3");
        info.put("profile",profile);
		int result = cdao.uploadContent(info);
		int contentIdx = result > 0 ? cdao.contentIdxSearch(member_idx) : -1;

        int result2 = -1;
        
        int content_idx = cdao.contentIdxSearch(member_idx);
        
        String htagList[] = htag.split("#");
		for(int i = 1; i < htagList.length; i++){
			info.put("content_idx", String.valueOf(content_idx));
			info.put("htag", htagList[i]);
			htagdao.add_Htag(info);
		}
		
		/*String mtagList[] = mtag.split("@");
		for(int i = 1; i < mtagList.length; i++){
			info.put("mtag", mtagList[i]);
			mtagdao.add_Mtag(info);
		}*/
        
        if(contentIdx > 0){ //content idx가 있다면
        	int state = Integer.parseInt(cs); 
            CoverageDTO dto = new CoverageDTO(contentIdx,0,state,"0",Integer.parseInt(member_idx),"0"); //toldx를 제외한 기본 dto
            
            if(state == 2 || state==3){ //특정 또는 제외 상태 일 때 
            	
            	String temp = "";
            	
	            if(cl != null && !cl.equals("")){ //개인 설정 리스트가 있다면
	            		if(cl_group == null || cl_group.equals("")){ //그룹 리스트가 더 없다면 인서트
	            			dto.setIdx_to(cl);
	            			result2 = cdao.coverageInsert(dto);
	    	        		if(result2 < 0){
	    	   	        		return  new ModelAndView("marsJson","result",result2);
	    	   	        	}
	            		}else{
	            			temp += cl +",";
		            		dto.setIdx_to(temp);
	            		}
	            }
            
	            if(cl_group != null && !cl_group.equals("")){ //그룹 리스트가 있다면
	            	
	            	String tempGroup = "";
    	        	   List<String> groupIdxList = new ArrayList<String>(Arrays.asList(cl_group.split(",")));
    	        	   
    	        	   for(int i=0; i <groupIdxList.size(); i++){
	    	        		List<GroupDTO> groupMembers = settingDao.showGroup(Integer.parseInt(groupIdxList.get(i)));
	       	   	        	tempGroup += groupIdxList.get(i);
	       	   	        			if(i != groupIdxList.size()-1){
	       	   	        				tempGroup += ",";
	       	   	        			}
	       	   	        	
	       	   	        	 String temp2 = "";
			       	   	      for(int j=0; j <groupMembers.size(); j++){
			       	   	    	  temp2 += groupMembers.get(j).getIdx_to();
			       	   	    	  if(j != groupMembers.size()-1 || i != groupIdxList.size()-1){
				  	        				temp2 += ",";
				  	        		}
			       	   	      }
	       	   	        	temp += temp2; //그룹마다 더함
    	        	  }
    	   	        dto.setIdx_to(temp); //toldx 설정
    	   	        dto.setIdx_group(tempGroup); //그룹 idx 설정
	        		result2 = cdao.coverageInsert(dto); // (개인) + 그룹 인서트
	        		if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
	            
    	        if((cl == null || cl.equals("")) && (cl_group == null || cl_group.equals(""))){ //리스트가 아무것도 없다면
    	        	dto.setCoverage_state(0); //상태 변경
    	        	result2 = cdao.coverageInsert(dto); //인서트
    	        	if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
            }
            else{ //아니라면 기본 dto인서트
	        	result2 = cdao.coverageInsert(dto);
	        	if(result2 < 0){
   	        		return  new ModelAndView("marsJson","result",result2);
   	        	}
	        }
            
            }else{ //없으면 -1 
            	return  new ModelAndView("marsJson","result",result2);
            }
        
        ModelAndView mav = new ModelAndView("marsJson","result",result2);
		return mav;
	}
	
	
	@RequestMapping("/uploadPhoto.do")
	public ModelAndView uploadPhoto(@RequestParam("useridx")String member_idx,
			@RequestParam("content")String content,
			@RequestParam("htag")String htag,
			@RequestParam("mtag")String mtag,
			@RequestParam(value="coverage_list_group",required=false)String cl_group,
			@RequestParam(value="coverage_list",required=false)String cl,
			@RequestParam("coverage_state")String cs,
			@RequestParam("profile")String profile,
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

            copyInto(fileName,mFile,req2);
            path += fileName+"?";
        }
      
        info.put("path", path);	
        info.put("content", content);
        info.put("writer", mhdto.getName());
        info.put("type", "1");
        info.put("profile",profile);
        int result = cdao.uploadContent(info);
        int contentIdx = result > 0 ? cdao.contentIdxSearch(member_idx) : -1;
        
        int result2 = -1;
        
        int content_idx = cdao.contentIdxSearch(member_idx);
        
        String htagList[] = htag.split("#");
		for(int i = 1; i < htagList.length; i++){
			info.put("content_idx", String.valueOf(content_idx));
			info.put("htag", htagList[i]);
			htagdao.add_Htag(info);
		}
		
		/*String mtagList[] = mtag.split("@");
		for(int i = 1; i < mtagList.length; i++){
			info.put("mtag", mtagList[i]);
			mtagdao.add_Mtag(info);
		}*/
		
        if(contentIdx > 0){ //content idx가 있다면
        	int state = Integer.parseInt(cs); 
            CoverageDTO dto = new CoverageDTO(contentIdx,0,state,"0",Integer.parseInt(member_idx),"0"); //toldx를 제외한 기본 dto
            
 if(state == 2 || state==3){ //특정 또는 제외 상태 일 때 
            	
            	String temp = "";
            	
	            if(cl != null && !cl.equals("")){ //개인 설정 리스트가 있다면
	            		if(cl_group == null || cl_group.equals("")){ //그룹 리스트가 더 없다면 인서트
	            			dto.setIdx_to(cl);
	            			result2 = cdao.coverageInsert(dto);
	    	        		if(result2 < 0){
	    	   	        		return  new ModelAndView("marsJson","result",result2);
	    	   	        	}
	            		}else{
	            			temp += cl +",";
	            		}
	            }
            
	            if(cl_group != null && !cl_group.equals("")){ //그룹 리스트가 있다면
	            	
	            	String tempGroup = "";
    	        	   List<String> groupIdxList = new ArrayList<String>(Arrays.asList(cl_group.split(",")));
    	        	   
    	        	   for(int i=0; i <groupIdxList.size(); i++){
	    	        		List<GroupDTO> groupMembers = settingDao.showGroup(Integer.parseInt(groupIdxList.get(i)));
	       	   	        	tempGroup += groupIdxList.get(i);
	       	   	        			if(i != groupIdxList.size()-1){
	       	   	        				tempGroup += ",";
	       	   	        			}
	       	   	        	
	       	   	        	 String temp2 = "";
			       	   	      for(int j=0; j <groupMembers.size(); j++){
			       	   	    	  temp2 += groupMembers.get(j).getIdx_to();
					       	   		if(j != groupMembers.size()-1 || i != groupIdxList.size()-1){
				  	        				temp2 += ",";
				  	        		}
			       	   	      }
	       	   	        	temp += temp2; //그룹마다 더함
    	        	  }
    	   	        dto.setIdx_to(temp); //toldx 설정
    	   	        dto.setIdx_group(tempGroup); //그룹 idx 설정
	        		result2 = cdao.coverageInsert(dto); // (개인) + 그룹 인서트
	        		if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
	            
    	        if((cl == null || cl.equals("")) && (cl_group == null || cl_group.equals(""))){ //리스트가 아무것도 없다면
    	        	dto.setCoverage_state(0); //상태 변경
    	        	result2 = cdao.coverageInsert(dto); //인서트
    	        	if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
            }
            else{ //아니라면 기본 dto인서트
	        	result2 = cdao.coverageInsert(dto);
	        	if(result2 < 0){
   	        		return  new ModelAndView("marsJson","result",result2);
   	        	}
	        }
            
            }else{ //없으면 -1 
            	return  new ModelAndView("marsJson","result",result2);
            }
        
        ModelAndView mav = new ModelAndView("marsJson","result",result2);
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
	
	@RequestMapping("/uploadVideo.do")
	public ModelAndView uploadVideo(@RequestParam("useridx")String member_idx,
			@RequestParam("content")String content,@RequestParam("not_upload")String list,
			@RequestParam("htag")String htag,
			@RequestParam("mtag")String mtag,
			@RequestParam(value="coverage_list_group",required=false)String cl_group,
			@RequestParam(value="coverage_list",required=false)String cl,
			@RequestParam("coverage_state")String cs,
			@RequestParam("profile")String profile,
			@RequestParam("sel")String sel,HttpServletRequest req) {

		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		
		String path = notSelectedvideoDelete(list,sel,req);
		
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("idx",member_idx);
        info.put("path", path);	
        info.put("content", content);
        info.put("writer", mhdto.getName());
        info.put("type", "2");
        info.put("profile", profile);
        int result = cdao.uploadContent(info);
        int contentIdx = result > 0 ? cdao.contentIdxSearch(member_idx) : -1;
        
        int result2 = -1;
        
        int content_idx = cdao.contentIdxSearch(member_idx);
        
        String htagList[] = htag.split("#");
		for(int i = 1; i < htagList.length; i++){
			info.put("content_idx", String.valueOf(content_idx));
			info.put("htag", htagList[i]);
			htagdao.add_Htag(info);
		}
		
		/*String mtagList[] = mtag.split("@");
		for(int i = 1; i < mtagList.length; i++){
			info.put("mtag", mtagList[i]);
			mtagdao.add_Mtag(info);
		}*/
        
        if(contentIdx > 0){ //content idx가 있다면
        	int state = Integer.parseInt(cs); 
            CoverageDTO dto = new CoverageDTO(contentIdx,0,state,"0",Integer.parseInt(member_idx),"0"); //toldx를 제외한 기본 dto
            
            if(state == 2 || state==3){ //특정 또는 제외 상태 일 때 
            	
            	String temp = "";
            	
	            if(cl != null && !cl.equals("")){ //개인 설정 리스트가 있다면
	            		if(cl_group == null || cl_group.equals("")){ //그룹 리스트가 더 없다면 인서트
	            			dto.setIdx_to(cl);
	            			result2 = cdao.coverageInsert(dto);
	    	        		if(result2 < 0){
	    	   	        		return  new ModelAndView("marsJson","result",result2);
	    	   	        	}
	            		}else{
	            			temp += cl +",";
		            		dto.setIdx_to(temp);
	            		}
	            }
            
	            if(cl_group != null && !cl_group.equals("")){ //그룹 리스트가 있다면
	            	
	            	String tempGroup = "";
    	        	   List<String> groupIdxList = new ArrayList<String>(Arrays.asList(cl_group.split(",")));
    	        	   
    	        	   for(int i=0; i <groupIdxList.size(); i++){
	    	        		List<GroupDTO> groupMembers = settingDao.showGroup(Integer.parseInt(groupIdxList.get(i)));
	       	   	        	tempGroup += groupIdxList.get(i);
	       	   	        			if(i != groupIdxList.size()-1){
	       	   	        				tempGroup += ",";
	       	   	        			}
	       	   	        	
	       	   	        	 String temp2 = "";
			       	   	      for(int j=0; j <groupMembers.size(); j++){
			       	   	    	  temp2 += groupMembers.get(j).getIdx_to();
			       	   	    	  if(j != groupMembers.size()-1 || i != groupIdxList.size()-1){
				  	        				temp2 += ",";
				  	        		}
			       	   	      }
	       	   	        	temp += temp2; //그룹마다 더함
    	        	  }
    	   	        dto.setIdx_to(temp); //toldx 설정
    	   	        dto.setIdx_group(tempGroup); //그룹 idx 설정
	        		result2 = cdao.coverageInsert(dto); // (개인) + 그룹 인서트
	        		if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
	            
    	        if((cl == null || cl.equals("")) && (cl_group == null || cl_group.equals(""))){ //리스트가 아무것도 없다면
    	        	dto.setCoverage_state(0); //상태 변경
    	        	result2 = cdao.coverageInsert(dto); //인서트
    	        	if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
            }
            else{ //아니라면 기본 dto인서트
	        	result2 = cdao.coverageInsert(dto);
	        	if(result2 < 0){
   	        		return  new ModelAndView("marsJson","result",result2);
   	        	}
	        }
            
            }else{ //없으면 -1 
            	return  new ModelAndView("marsJson","result",result2);
            }
        
        ModelAndView mav = new ModelAndView("marsJson","result",result2);
		return mav;
	}
	
	public String notSelectedvideoDelete(@RequestParam("not_upload")String list,
			@RequestParam("sel")String sel,HttpServletRequest req) {
		
		String realPath = req.getSession().getServletContext().getRealPath("");
		realPath = realPath.replaceAll("\\\\","/");
		
		List<String> items = new ArrayList<String>(Arrays.asList(list.split(",")));
		
		for(String src : items){
			System.out.println(src);
			if(!src.equals(sel)){
				
				File file_video = new File(realPath+"/myHomeFolder/content/"+src);

				String img = src.substring(0, src.indexOf("."))+ ".jpg";
				File file_img = new File(realPath+"/myHomeFolder/content/"+img);
				
				if(file_video.exists() && file_img.exists() ){ 
						if(file_video.delete() && file_img.delete()){
		                System.out.println("삭제한 파일 : "+src);
		            }else{
		                System.out.println("삭제 실패한 파일 : "+src);
		                return null;
		            }
				}else{
					System.out.println("파일이 존재하지 않습니다.");
					return null;
				}
				
			}
		}
		
		 return sel;
	}
	
	@RequestMapping("/videoThumbnail.do")
	public ModelAndView videoThumbnail(@RequestParam("useridx")String member_idx,
			MultipartHttpServletRequest req,HttpServletRequest req2) {
		
		MyHomeDTO mhdto = mhdao.myHomeSource(member_idx);
		
		MultipartFile videoFile = req.getFile("video");
        String fileName = mhdto.getMember_idx()+mhdto.getName()+System.currentTimeMillis()+videoFile.getOriginalFilename();
		
        //鍮꾨뵒�삤 蹂듭궗
        copyInto(fileName,videoFile,req2);
        
        //鍮꾨뵒�삤 罹≪쿂 �씠誘몄� ���옣
        String realPath = req2.getSession().getServletContext().getRealPath("");
		realPath = realPath.replaceAll("\\\\","/");
		
        File newfile = new File(realPath+"/myHomeFolder/content/"+fileName);
        
        String imageFileName = fileName.substring(0, fileName.indexOf("."))+ ".jpg";
        
        File imageFile = new File(realPath+"/myHomeFolder/content/"+imageFileName);
        
		File thumbnail = extractImage(newfile,1,imageFile);

        ModelAndView mav = new ModelAndView("marsJson","fileName",fileName);
		return mav;
	}
	
	public File extractImage(File videoFile, int position,File creatingImageFile) 
	{

		try {
			int seconds = position % 60;
			int minutes = (position - seconds) / 60;
			int hours = (position - minutes * 60 - seconds) / 60 / 60;
			String videoFilePath = videoFile.getAbsolutePath();
			String imageFilePath = creatingImageFile.getAbsolutePath();
			String ffmpeg = "C:\\tools\\ffmpeg";
					
			String[] commands = { ffmpeg, "-ss",
					String.format("%02d:%02d:%02d", hours, minutes, seconds),
					"-i", videoFilePath, "-an", "-vframes", "1", "-y",
					imageFilePath};

			Runtime run = Runtime.getRuntime();
			//run.exec("cmd.exe chcp 65001");
			Process processor = run.exec(commands);

			String line1 = null;
			BufferedReader error = new BufferedReader(new InputStreamReader(
					processor.getErrorStream()));
			while ((line1 = error.readLine()) != null) {
				System.out.println(line1);
			}

			processor.waitFor();
			int exitValue = processor.exitValue();
			if (exitValue != 0) {
				throw new RuntimeException("exit code is not 0 [" + exitValue
						+ "]");
			}
			return creatingImageFile;
		} catch (IOException e) {
			throw new RuntimeException(e);
		} catch (InterruptedException e) {
			throw new RuntimeException(e);
		}
	}
	
	@RequestMapping("/deleteContent.do")
	public ModelAndView deleteContent(@RequestParam("contentidx")String contentidx,HttpServletRequest req){
		
		int type = cdao.contentOne(contentidx).getCategory();
		
		String realPath = req.getSession().getServletContext().getRealPath("");
		realPath = realPath.replaceAll("\\\\","/");
		
		if(type < 3){
			
			if(type == 1){
				
				String list = cdao.contentOne(contentidx).getPath();
				
				List<String> items = new ArrayList<String>(Arrays.asList(list.split("\\?")));
				
				for(String src : items){
						File file_img = new File(realPath+"/myHomeFolder/content/"+src);
						
						if(file_img.exists() ){ 
								if(file_img.delete()){
				                System.out.println("삭제한 파일 : "+src);
				            }else{
				                System.out.println("삭제 실패한 파일 : "+src);
				                //return new ModelAndView("marsJson", "result", -1);
				            }
						}else{
							System.out.println("파일이 존재하지 않습니다.");
							//return new ModelAndView("marsJson", "result", -1);
						}
				}
			}else{
				
						String src = cdao.contentOne(contentidx).getPath();
						
						File file_video = new File(realPath+"/myHomeFolder/content/"+src);

						String img = src.substring(0, src.indexOf("."))+ ".jpg";
						File file_img = new File(realPath+"/myHomeFolder/content/"+img);
						
						if(file_video.exists() && file_img.exists() ){ 
								if(file_video.delete() && file_img.delete()){
				                System.out.println("삭제한 파일 : "+src);
				            }else{
				                System.out.println("삭제 실패한 파일 : "+src);
				               //return new ModelAndView("marsJson", "result", -1);
				            }
						}else{
							System.out.println("파일이 존재하지 않습니다.");
							//return new ModelAndView("marsJson", "result", -1);
						}
			}
		}
		int result = cdao.contentDel(contentidx);
		cdao.reportDel(contentidx);
		ModelAndView mav = new ModelAndView("marsJson", "result", result);
		return mav;
	}
	
	@RequestMapping(value="/uploadDateContent.do",method=RequestMethod.POST)
	public ModelAndView uploadDateContent(@RequestParam("uploadDate")String uploadDate, @RequestParam("member_idx")int member_idx){
		System.out.println(uploadDate+"/"+member_idx);
		HashMap<String, String> uploadDateMap = new HashMap<String, String>();
		uploadDateMap.put("uploadDate", uploadDate);
		uploadDateMap.put("member_idx", String.valueOf(member_idx));
		List<ContentDTO> list = cdao.searchUploadDate(uploadDateMap);
		
		ModelAndView mav=new ModelAndView("marsJson", "list", list);
		
		return mav;
		
	}
	
	@RequestMapping("/modifyContentForm.do")
	public ModelAndView modifyContentForm(@RequestParam("contentidx")int contentidx,HttpServletRequest req){
		
		String loginIdx_s = (String) req.getSession().getAttribute("useridx");
		int loginIdx =Integer.parseInt(loginIdx_s);
		
		MyHomeDTO mhdto = mhdao.myHomeSource(loginIdx_s);
		
		List<MemberDTO> followerList = friendDao.followerList(loginIdx);
		
		List<FriendDTO> fdtoList = settingDao.getGroupList(loginIdx);
		
		HashMap<String,List<MemberDTO>> groupList = new HashMap<String, List<MemberDTO>>();
		HashMap<String,Integer> groupList_idx = new HashMap<String,Integer>();
		
		for(FriendDTO fdto : fdtoList){
			
			int groupIdx = fdto.getIdx();
			List<GroupDTO> groupMembers = settingDao.showGroup(groupIdx);
			
			List<MemberDTO> group = new ArrayList<MemberDTO>();
			String groupname = null;
			
			for(GroupDTO gdto : groupMembers){
				
				//key
				groupname = gdto.getGroup_name(); 
				
				//values
				int member = gdto.getIdx_to();
				MemberDTO mdto = mdao.getUserInfo_idx(member);
				
				group.add(mdto);
			}
			groupList.put(groupname, group);
			groupList_idx.put(groupname, groupIdx);
		}
		
		String idx = Integer.toString(contentidx);
		ContentDTO cdto = cdao.contentOne(idx);
		
		CoverageDTO cvdto = cdao.coverageOne(idx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("profile", mhdto.getProfile_img());
		mav.addObject("followerList", followerList);
		mav.addObject("groupList",groupList);
		mav.addObject("groupList_idx",groupList_idx);
		mav.addObject("cdto",cdto);
		mav.addObject("cvdto", cvdto);
		mav.addObject("contentidx", contentidx);
		mav.setViewName("myPage/content/contentModify");
		return mav;
		
	}
	
	@RequestMapping("/contentModify.do")
	public ModelAndView contentModify(@RequestParam("content_idx")String content_idx,
			@RequestParam(value="coverage_list_group",required=false)String cl_group,
			@RequestParam(value="coverage_list",required=false)String cl,
			@RequestParam("coverage_state")String cs,
			@RequestParam("content")String content) {
		HashMap<String, String> info = new HashMap<String, String>();
		info.put("content_idx",content_idx);
        info.put("content", content);
		int result = cdao.contentUpdate(info);

        int result2 = -1;
        
		if(result > 0){
        
        	int state = Integer.parseInt(cs); 
        	
        	HashMap<String, String> info2 = new HashMap<String, String>();
        	info2.put("cidx",content_idx);
        	info2.put("idx_to","0");
        	info2.put("idx_group", "0");
        	info2.put("coverage_state", cs);
            if(state == 2 || state == 3 ){ //특정 또는 제외 상태 일 때 
            	
            	String temp = "";
	            if(cl != null && !cl.equals("")){ //개인 설정 리스트가 있다면
	            		if(cl_group == null || cl_group.equals("")){ //그룹 리스트가 더 없다면 인서트
	            			info2.put("idx_to", cl);
	            			result2 = cdao.coverageUpdate(info2);
	    	        		if(result2 < 0){
	    	   	        		return  new ModelAndView("marsJson","result",result2);
	    	   	        	}
	            		}else{
	            			temp += cl +",";
	            		}
	            }
            
	            if(cl_group != null && !cl_group.equals("")){ //그룹 리스트가 있다면

	            	 String tempGroup = "";
    	        	   List<String> groupIdxList = new ArrayList<String>(Arrays.asList(cl_group.split(",")));
    	        	  
    	        	   for(int i=0; i <groupIdxList.size(); i++){
	    	        		List<GroupDTO> groupMembers = settingDao.showGroup(Integer.parseInt(groupIdxList.get(i)));
	       	   	        	tempGroup += groupIdxList.get(i);
	       	   	        			if(i != groupIdxList.size()-1){
	       	   	        				tempGroup += ",";
	       	   	        			}
	       	   	        	
	       	   	        	 String temp2 = "";
			       	   	      for(int j=0; j <groupMembers.size(); j++){
			       	   	    	  temp2 += groupMembers.get(j).getIdx_to();
			       	   	    	  if(j != groupMembers.size()-1 || i != groupIdxList.size()-1){
				  	        				temp2 += ",";
				  	        		}
			       	   	      }
	       	   	        	temp += temp2; //그룹마다 더함
    	        	  }
    	   	        info2.put("idx_to", temp);
    	   	        info2.put("idx_group", tempGroup); //그룹 idx 설정
	        		result2 = cdao.coverageUpdate(info2);
	        		if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
	            
    	        if((cl == null || cl.equals("")) && (cl_group == null || cl_group.equals(""))){ //리스트가 아무것도 없다면
    	        	info.put("coverage_state", "0");
    	        	result2 = cdao.coverageUpdate(info2); //인서트
    	        	if(result2 < 0){
	   	        		return  new ModelAndView("marsJson","result",result2);
	   	        	}
    	        }
            }
            else{ //아니라면 기본 dto인서트
            	result2 = cdao.coverageUpdate(info2);
	        	if(result2 < 0){
   	        		return  new ModelAndView("marsJson","result",result2);
   	        	}
	        }
            
		}
        ModelAndView mav = new ModelAndView("marsJson","result",result2);
		return mav;
	}
	
	
}
