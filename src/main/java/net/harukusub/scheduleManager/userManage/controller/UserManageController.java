package net.harukusub.scheduleManager.userManage.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.harukusub.scheduleManager.userManage.service.UserManageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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

	
	@RequestMapping(value="/user/query", method=RequestMethod.GET)
	@ResponseBody
	public List<?> userSelectList(@RequestParam HashMap<String,Object> paramMap){
		List<?> userList = userManageService.userSelectList(paramMap);
		
//		HashMap<String, Object> resultMap = new HashMap<String, Object>();
//		resultMap.put("userList", userList);

		return userList;
	}

	@RequestMapping(value="/user/create", method=RequestMethod.POST)
	public void userInsert(HttpServletRequest request, HttpServletResponse response
			, @RequestParam HashMap<String,Object> paramMap){
		paramMap.put("wrtr", "user");
		paramMap.put("updtr", "user");
		userManageService.userInsert(paramMap);
	}
	
	@RequestMapping(value="/user/show/{usrId}", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> userSelect(@PathVariable String usrId){
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("usrId", usrId);
		HashMap<String, Object> resultMap = userManageService.userSelect(paramMap);
		
		return resultMap;
	}
	
	@RequestMapping(value="/user/update", method=RequestMethod.PUT)
	public void userUpdate(HttpServletRequest request, HttpServletResponse response
			, @RequestParam HashMap<String,Object> paramMap){
		System.out.println("aaaa");
		paramMap.put("updtr", "updater");
		System.out.println("aaaa " + paramMap);
		userManageService.userUpdate(paramMap);
	}

	@RequestMapping(value="/user/delete/{usrId}", method=RequestMethod.DELETE)
	@ResponseBody
	public void userDelete(@PathVariable String usrId){
		HashMap<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("usrId", usrId);
		userManageService.userDelete(paramMap);
		
	}
}
