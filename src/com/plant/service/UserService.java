package com.plant.service;

import java.util.List;

import com.plant.entity.User;

public interface UserService {
	
	//注册用户信息
	public void addUser(User user);
	
	//用户登录
	public User loginUser(User user);
	
	//发送邮件
	public String sendEmail(String userEmail);
	
	//查询是否昵称重复
	public List<User> findIsUserNameExist(String userName);
	
	//查询是否账号重复
	public List<User> findIsUserAccountExist(String userAccount);
	
	//查询所有用户信息
	public List<User> findUser(User user);
	
	//更新用户信息
	public void updateUser(User user);
}
