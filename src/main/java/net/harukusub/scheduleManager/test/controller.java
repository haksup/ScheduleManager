package net.harukusub.scheduleManager.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {
	
	@RequestMapping("/view")
	public String view(){
		return "userManage/userList";
	}
}
