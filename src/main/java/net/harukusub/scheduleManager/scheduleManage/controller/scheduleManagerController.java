package net.harukusub.scheduleManager.scheduleManage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/scheduleManage")
public class scheduleManagerController {
	
	@RequestMapping(value="/scheduleProjectList", method=RequestMethod.GET)
	public String scheduleProjectList(){
		return "scheduleManage/scheduleProjectList";
	}
}
