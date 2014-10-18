package net.harukusub.scheduleManager.userManage.service.impl;

import java.util.HashMap;
import java.util.List;

import net.harukusub.scheduleManager.userManage.dao.UserManageDao;
import net.harukusub.scheduleManager.userManage.service.UserManageService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserManageServiceImpl implements UserManageService {
	@Autowired
	private UserManageDao userManageDao;
	
	@Override
	public List<?> userSelectList(HashMap<String, Object> paramMap) {
		return userManageDao.userSelectList(paramMap);
	}
	
}
