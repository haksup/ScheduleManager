package net.harukusub.scheduleManager.authorityManage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/authorityManage")
public class authorityManagerController {
	
	@RequestMapping(value="/authorityProjectList", method=RequestMethod.GET)
	public String projectList(){
		return "authorityManage/authorityProjectList";
	}
}
