package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("main.do")
	public String mainPage() {
		return "main/main";
	}
	@RequestMapping("main_frList.do")
	public String mainFrListPage() {
		return "main/main_frList";
	}
}
