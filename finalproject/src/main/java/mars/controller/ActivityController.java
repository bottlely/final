package mars.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mars.activity.model.*;
import mars.member.model.MemberDTO;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityDAO actDao;
	
	
}
