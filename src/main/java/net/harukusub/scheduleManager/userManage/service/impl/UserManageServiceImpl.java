package net.harukusub.scheduleManager.userManage.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public int userInsert(HashMap<String, Object> paramMap) {
		return userManageDao.userInsert(paramMap);
	}

	@Override
	public HashMap<String, Object> userSelect(HashMap<String, Object> paramMap) {
		return userManageDao.userSelect(paramMap);
	}
	
	@Override
	public int userUpdate(HashMap<String, Object> paramMap) {
		return userManageDao.userUpdate(paramMap);
	}

	@Override
	public int userDelete(HashMap<String, Object> paramMap) {
		return userManageDao.userDelete(paramMap);
	}
}
