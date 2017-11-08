package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import mars.activity.model.*;

@Controller
public class ActivityController {
	
	@Autowired
	private ActivityDAO actDao;
}
