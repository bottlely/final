package mars.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.swing.JFrame;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.sarxos.webcam.*;

@Controller
public class WebcamController {

	@RequestMapping("/webMain.do")
	public ModelAndView detectCam(){
		String ip = getMyIp();
		System.out.println("myip : " + ip);
		Webcam webcam = Webcam.getDefault();
		ModelAndView mav = new ModelAndView();
		
		if (webcam != null) {
			System.out.println("Webcam: " + webcam.getName());
			mav.setViewName("webcam/webcamMain");
			return mav;
		} else {
			System.out.println("No webcam detected");
			mav.addObject("msg", "연결가능한 카메라가 없습니다.");
			mav.addObject("gourl", "index.do");
			mav.setViewName("webcam/webcamMsg");
			return mav;
		}
		
	}
	
	public String getMyIp() {
		try {
			String addr = InetAddress.getLocalHost().getHostAddress();
			return addr;
		} catch (UnknownHostException e) {
			e.printStackTrace();
			return null;
		}
	}
	
//	@RequestMapping("/playCam.do")
//	public String playweb(){
//		return "webcam/views/index";
//	}
//	
//	@RequestMapping("/local.do")
//	public String playlocal(){
//		return "webcam/views/local-cam";
//	}
//	
//	@RequestMapping("/remote.do")
//	public String playremote(){
//		return "webcam/views/remote-streams";
//	}

	

	public void playCam() {
		Webcam webcam = Webcam.getDefault();
		webcam.setViewSize(WebcamResolution.VGA.getSize());

		WebcamPanel panel = new WebcamPanel(webcam);
		panel.setFPSDisplayed(true);
		panel.setDisplayDebugInfo(true);
		panel.setImageSizeDisplayed(true);
		panel.setMirrored(true);

		JFrame window = new JFrame("Test webcam panel");
		window.add(panel);
		window.setResizable(true);
		window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		window.pack();
		window.setVisible(true);		
	}
	
	@RequestMapping(value="/chat", method=RequestMethod.GET)
    public String chatForm(){
        return "webcam/wsclient";
    }
}
