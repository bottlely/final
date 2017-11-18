package mars.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import mars.ad.model.ApplyAdDAO;
import mars.ad.model.ApplyAdDTO;

import mars.email.model.MailService;
import mars.member.model.MemberDAO;


@Controller
public class AdController {
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private ApplyAdDAO adDao;
	
	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}
	
	@RequestMapping("/applyAdForm.do")
	public ModelAndView adJoinForm(){
		 ModelAndView mav = new ModelAndView();
	     mav.setViewName("ad/applyAd");
	     return mav;
	}
	
	
	@RequestMapping("/applyAd.do")
	public ModelAndView applyAd(@ModelAttribute("cmd")ApplyAdDTO command, @RequestParam("file")MultipartFile file, @RequestParam("member_idx")String m_idx,
			 @RequestParam("name")String name,  @RequestParam("ad_name")String ad_name,
			 MultipartHttpServletRequest req, HttpServletRequest req2)
	{
		MultipartFile profile = req.getFile("file");
		String ad_content = name+ad_name+m_idx+profile.getOriginalFilename();
		String type = "ad_content";
		copyInto(ad_content,profile,req2);
		int result = adDao.insert(command, ad_content);
		String msg = result>0?"광고 신청을 완료했습니다.":"광고 신청이 실패했습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("ad/adMsg");
		return mav;
	}
	
	@RequestMapping("/goMyPage.do")
	public String goMyPage(){
		return "main/main";
	}
	
	@RequestMapping("/checkCurAd.do")
	public String checkCurAd(){
		return "ad/checkCurAd";
	}
	
	@RequestMapping("/showCur.do")
	public ModelAndView showCur(@RequestParam("user_idx")String user_idx){
		int member_idx = Integer.parseInt(user_idx);
		List<ApplyAdDTO> list =	adDao.showCurList(member_idx);
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/showAve.do")
	public ModelAndView showAve(@RequestParam(value="ad_idx")Integer i){
		String str = adDao.showAveNum(i);
		ModelAndView mav = new ModelAndView();
		mav.addObject("i", i);
		mav.addObject("str", str);
		mav.setViewName("ad/checkCurAd");
		return mav;
	}
	
	@RequestMapping("/showNum.do")
	public ModelAndView showNum(@RequestParam("user_idx")String user_idx){
		int member_idx = Integer.parseInt(user_idx);
		List<ApplyAdDTO> list =	adDao.showNum(member_idx);
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/getAdRequest.do")
	public ModelAndView getAdRequest(){
		List<ApplyAdDTO> list =	adDao.adList();
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/getPayRequest.do")
	public ModelAndView getPayRequest(){
		List<ApplyAdDTO> list =	adDao.adPayList();//
		ModelAndView mav = new ModelAndView("marsJson","list",list);
		return mav;
	}
	
	@RequestMapping("/list.do")
	public ModelAndView getList(@RequestParam("ad_idx")String ad_idx){
		List<ApplyAdDTO> list =	adDao.showList(ad_idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("ad/showList");
		return mav;
	}
	
	@RequestMapping("/insertOkSign.do")
	public void insertOkSign(@RequestParam("ad_idx")String ad_idx, @RequestParam("member_idx")String member_idx){
		int adidx = Integer.parseInt(ad_idx);
		int memberidx = Integer.parseInt(member_idx);
		String mail = adDao.insertOkSign(adidx, memberidx);
		
		String subject = "MARS에서 귀하의 광고신청이 승인되었습니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("결제부탁.");
		boolean check = mailService.send(subject, sb.toString(), "jungdu92@gmail.com", mail);
		
	}
	
	@RequestMapping("/insertNoSign.do")
	public void insertNoSign(@RequestParam("ad_idx")String ad_idx, @RequestParam("member_idx")String member_idx){

		int adidx = Integer.parseInt(ad_idx);
		int memberidx = Integer.parseInt(member_idx);
		String mail = adDao.insertNoSign(adidx, memberidx);
		
		String subject = "MARS에서 귀하의 광고신청이 거절되었습니다.";
		StringBuilder sb = new StringBuilder();
		sb.append("귀하의 광고가 거절되었습니다.");
		boolean check = mailService.send(subject, sb.toString(), "jungdu92@gmail.com", mail);

	}
	
	@RequestMapping("/goCount.do")
	public void goCount(@RequestParam("data")String data){
		adDao.goCount(data);
	}
	
	@RequestMapping("/postAd.do")
	public void postAd(@RequestParam("ad_idx")String data){
		adDao.postAd(data);
	}
	
	public void copyInto(String filename, MultipartFile upload, HttpServletRequest req2){
		
		try {
			byte bytes[] = upload.getBytes();
			String realPath = req2.getSession().getServletContext().getRealPath("");
			realPath = realPath.replaceAll("\\\\","/");
			File newfile = new File(realPath+"/adFolder/"+filename);
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}



	

}
