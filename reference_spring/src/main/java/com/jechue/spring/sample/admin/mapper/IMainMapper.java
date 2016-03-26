package com.jechue.spring.sample.admin.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.jechue.spring.core.models.LimitPointModel;
import com.jechue.spring.sample.admin.models.ListModel;
import com.jechue.spring.sample.admin.models.UserModel;

@Repository
public interface IMainMapper {
	
	public int selectUserCount();
	
	public List<ListModel> selectUserList (LimitPointModel limitPoint);
	
	public UserModel selectUser(String id);
}
