package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SettingController {
	@RequestMapping("/infoSetting.do")
	public String infoSettingForm(){
		return "setting/infoSetting";
	}

}
