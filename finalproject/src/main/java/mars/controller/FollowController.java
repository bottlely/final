package mars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import mars.follow.model.*;

@Controller
public class FollowController {

	@Autowired
	private FollowDAO followDao;
	
}
