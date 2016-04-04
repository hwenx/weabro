package com.jechue.spring.sample.admin.service;

import java.util.List;
import com.jechue.spring.sample.admin.models.ListModel;
import com.jechue.spring.sample.admin.models.UserModel;


public interface IMainService {
	public int getUserCount();
	public UserModel getUser(String id);
	
}
