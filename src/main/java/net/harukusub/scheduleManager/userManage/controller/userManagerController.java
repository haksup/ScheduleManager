package net.harukusub.scheduleManager.userManage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class userManagerController {
	
	@RequestMapping(value="/userList", method=RequestMethod.GET)
	public String userList(){
		return "userManage/userList";
	}
}
