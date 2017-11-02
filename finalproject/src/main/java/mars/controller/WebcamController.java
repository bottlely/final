package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.github.sarxos.webcam.Webcam;

@Controller
public class WebcamController {

	@RequestMapping("/webMain.do")
	public String detectCam(){
		Webcam webcam = Webcam.getDefault();
		if (webcam != null) {
			System.out.println("Webcam: " + webcam.getName());
		} else {
			System.out.println("No webcam detected");
		}
		
		return "webcam/webcamMain";
	}
}
