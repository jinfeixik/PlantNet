package com.plant.service.impl;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.plant.dao.UserMapper;
import com.plant.entity.User;
import com.plant.service.UserService;
import com.plant.util.CodeUtil;
import com.plant.util.SendEmailUtil;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userDao;
	
	@Autowired
	private SendEmailUtil sendEmailUtil;

	@Transactional
	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 将当前时间赋值给注册时间
		user.setUserCreateTime(nowDate);

		// 将用户状态赋值为“可用”
		user.setUserState("可用");

		// 将用户类型赋值为“普通用户”
		user.setUserType("普通用户");

		userDao.registerUser(user);

	}

	@Transactional
	@Override
	public User loginUser(User user) {
		// TODO Auto-generated method stub

		// 如果账号或密码不存在
		if (userDao.loginUser(user) != null) {
			return userDao.loginUser(user);

			// 如果账号密码正确
		} else {
			return null;
		}

	}

	@Override
	public String sendEmail(String userEmail) {
		// TODO Auto-generated method stub

		String toEmail = userEmail;
		String code = null;
		CodeUtil codeUtil = new CodeUtil();
		code = codeUtil.getVerificationCode(4);
		//code = codeUtil.generateUniqueCode();
		
		

		try {
		    sendEmailUtil.send_email(toEmail,code);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//返回验证码
		return code;

	}

	@Override
	public List<User> findIsUserNameExist(String userName) {
		// TODO Auto-generated method stub
		return userDao.findIsUserNameExist(userName);
	}

	@Override
	public List<User> findIsUserAccountExist(String userAccount) {
		// TODO Auto-generated method stub
		return userDao.findIsUserAccountExist(userAccount);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		 userDao.updateUser(user);
	}

	@Override
	public List<User> findUser(User user) {
		// TODO Auto-generated method stub
		return userDao.findUser(user);
	}

}
