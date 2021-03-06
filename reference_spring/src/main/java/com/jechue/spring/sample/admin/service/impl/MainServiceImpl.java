package com.jechue.spring.sample.admin.service.impl;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jechue.spring.sample.admin.mapper.IMainMapper;
import com.jechue.spring.sample.admin.models.UserModel;
import com.jechue.spring.sample.admin.service.IMainService;

@Service("mainService")
public class MainServiceImpl implements IMainService{
	
	private final Logger logger = Logger.getLogger(getClass());
	
	@Autowired
	private IMainMapper mapper;

	@Override
	public int getUserCount(){
		System.out.println("=======  UserCount =======");
		return mapper.selectUserCount();
	}
	
	@Override
	public UserModel getUser(String id){
		
		UserModel um = mapper.selectUser(id);
		return um;
	}
}
