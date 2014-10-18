package net.harukusub.scheduleManager.userManage.controller;

import java.util.HashMap;
import java.util.List;

import javax.ws.rs.GET;

import net.harukusub.scheduleManager.userManage.service.UserManageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/userManage")
public class UserManageController {
	@Autowired
	private UserManageService userManageService;
	
	@RequestMapping(value="/userList", method=RequestMethod.GET)
	public String userList(){
		return "userManage/userList";
	}

	@RequestMapping(value="/user/query}", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> userSelectList(@RequestParam HashMap<String,Object> paramMap){
		System.out.println("aaaa ");
		List<?> userList = userManageService.userSelectList(paramMap);
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("userList", userList);
		return resultMap;
	}

	@RequestMapping(value="/user/create", method=RequestMethod.POST)
	public void userInsert(){
		System.out.println("bbbb");
	}
}
