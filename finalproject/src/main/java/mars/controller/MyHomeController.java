package mars.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyHomeController {
	
	@RequestMapping("/myHomeForm.do")
	public String myHomeForm() {
		return "myPage/myHome";
	}

}
