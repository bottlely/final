package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("main.do")
	public String mainPage() {
		return "main/main";
	}
	
	@RequestMapping("main_view.do")
	public String main_viewPage() {
		return "main/main_view";
	}
}
