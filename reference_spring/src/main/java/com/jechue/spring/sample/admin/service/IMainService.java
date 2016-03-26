package com.jechue.spring.sample.admin.service;

import java.util.List;
import com.jechue.spring.core.models.LimitPointModel;
import com.jechue.spring.sample.admin.models.ListModel;
import com.jechue.spring.sample.admin.models.UserModel;


public interface IMainService {
	
	public int getUserCount();
	
	public List<ListModel> getUserList(LimitPointModel limitPoint);
	
	public UserModel getUser(String id);
}
