package net.harukusub.scheduleManager.userManage.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public interface UserManageDao {
	public List<?> userSelectList(HashMap<String, Object> paramMap);
}
