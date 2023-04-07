package com.plant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plant.entity.User;
import com.plant.service.UserService;

@Controller
public class AdminUserController {

	@Autowired
	private UserService userService;

	@Autowired
	private HttpSession session;

	// 用户列表展示
	@RequestMapping("user-list.form")
	public String userList(ModelMap model, User user) {

		// 查找用户数据并传到页面中
		model.put("userLists", userService.findUser(user));

		return "hui/user-list";
	}

	// 更新用户状态
	@RequestMapping("updateUserState.form")
	@ResponseBody
	public String updateUserStateList(ModelMap model, User user) {

		// 更新用户信息
		userService.updateUser(user);

		// 授予取消会员资格时，如果此时该用户正在登录状态，则更新session
		if (session.getAttribute("user") != null) {
			if (user.getUserType() != "" && user.getUserType() != null) {
				User newUser = (User) session.getAttribute("user");
				newUser.setUserType(user.getUserType());
				session.setAttribute("user",newUser);
			}
		}

		return "hui/user-list";
	}
}
