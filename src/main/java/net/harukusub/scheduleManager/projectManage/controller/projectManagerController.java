package net.harukusub.scheduleManager.projectManage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class projectManagerController {
	
	@RequestMapping(value="/projectList", method=RequestMethod.GET)
	public String projectList(){
		return "projectManage/projectList";
	}
}
