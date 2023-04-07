package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.User;

@Component
public interface UserMapper {
	
	//添加一条用户信息
    public void registerUser(User user);
    
    
    //登录时验证账号密码
    public User loginUser(User user);
    
    
    //查询昵称是否已经存在
    public List<User> findIsUserNameExist(String userName);
    
    
    //查询账号是否已经存在
    public List<User> findIsUserAccountExist(String userName);

    //更新用户信息
	public void updateUser(User user);

	
    //查询所有用户信息
	public List<User> findUser(User user);
    
    
}
