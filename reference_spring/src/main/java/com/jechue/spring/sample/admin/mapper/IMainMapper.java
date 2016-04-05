package com.jechue.spring.sample.admin.mapper;

import org.springframework.stereotype.Repository;

import com.jechue.spring.sample.admin.models.UserModel;

@Repository
public interface IMainMapper {
	public int selectUserCount();
	public UserModel selectUser(String id);
}
