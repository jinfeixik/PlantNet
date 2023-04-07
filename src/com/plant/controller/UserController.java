package com.plant.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.User;
import com.plant.service.UserService;
import com.plant.util.IsContainSpaceUtil;
import com.plant.util.UpLoadFileUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	// 注册请求
	@RequestMapping("register.form")
	public String registerUser() {

		// 从session中拿到user注册
		User user = (User) session.getAttribute("registeruser");
		userService.addUser(user);

		// 销毁验证码和注册用户信息的session
		session.removeAttribute("emailCode");
		session.removeAttribute("registeruser");

		return "redirect:/login.jsp";
	}

	// 登出当前账号
	@RequestMapping("loginOut.form")
	public String loginOut() {

		// 移除用户信息
		session.removeAttribute("user");

		// 清除session
		// session.invalidate();

		return "redirect:/index.form";
	}

	// 登录请求
	@RequestMapping("login.form")
	public String loginUser(HttpServletResponse response, User user) {

		// 如果是管理员则跳转到后台页面
		if (userService.loginUser(user).getUserType().equals("管理员")) {
			return "hui/index";
		} else {
			// 将用户信息放到Session中
			session.setAttribute("user", userService.loginUser(user));

		}

		// 回到主页
		return "redirect:/index.form";

	}

	// 登录时检查账号密码是否正确
	@RequestMapping("checkLogin.form")
	@ResponseBody
	public String checkLogin(@RequestParam("userAccount") String userAccount,
			@RequestParam("userPassword") String userPassword) {

		// 把属性值封装到对象中
		User user = new User();
		user.setUserAccount(userAccount);
		user.setUserPassword(userPassword);

		// 如果结果是可登录，返回成功标记
		if (userService.loginUser(user) != null) {
			return "true";
		}
		return "false";
	}

	// 发送邮件
	@RequestMapping("sendEmail.form")
	@ResponseBody
	public String sendEmail(@RequestParam("avatar") MultipartFile avatar,
			User user, ModelMap model) {

		// 上传用户头像
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (avatar.getOriginalFilename() != ""
				&& avatar.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(avatar, request);
		}

		// 改变图片路径
		user.setUserAvatar("plantResource/" + avatar.getOriginalFilename());

		// 验证码
		String emailResult = null;

		// 如果填写了邮箱
		if (user.getUserEmail() != null && user.getUserEmail() != "") {
			emailResult = userService.sendEmail(user.getUserEmail());
		}
		// 如果邮件发送成功
		if (emailResult != null) {
			// 将验证码放到Session中
			session.setAttribute("emailCode", emailResult);
		}

		// 存到session中，方便再次发送
		session.setAttribute("registeruser", user);

		return "true";
	}

	// 进入邮箱验证页面
	@RequestMapping("toRegisterEmail.form")
	public String toRegisterEmail() {
		return "register-email";
	}

	// 重新发送邮件
	@RequestMapping("reSendEmail.form")
	public String reSendEmail(ModelMap model) {
		// 验证码
		String emailResult = null;

		User user = (User) session.getAttribute("registeruser");

		// 如果包含邮箱
		if (user.getUserEmail() != null && user.getUserEmail() != "") {
			emailResult = userService.sendEmail(user.getUserEmail());
		}
		// 如果邮件发送成功
		if (emailResult != null) {
			// 将验证码放到Session中
			session.setAttribute("emailCode", emailResult);
		}

		return "register-email";
	}

	// 注册时判断昵称格式是否正确
	@RequestMapping("/isUserNameTrue.form")
	@ResponseBody
	public String isUserNameTrue(HttpServletRequest request)
			throws UnsupportedEncodingException {
		IsContainSpaceUtil isContainSpaceUtil = new IsContainSpaceUtil();
		String userName = request.getParameter("userName");

		// 昵称为中文时需修正编码
		userName = new String(userName.getBytes("ISO-8859-1"), "UTF-8");

		// 用来标记错误信息
		String userNameFlag = "truemsg";

		// 昵称是否为空
		if (userName == "" || userName == null) {
			userNameFlag = "emptymsg";
		}
		// 查询昵称是否已存在
		else if (!userService.findIsUserNameExist(userName).isEmpty()) {
			userNameFlag = "existmsg";
			// 昵称长度是否正确
		} else if (userName.length() < 4 || userName.length() > 6) {
			userNameFlag = "lengthmsg";
			// 昵称是否包含空格
		} else if (isContainSpaceUtil.IsContainSpace(userName)) {
			userNameFlag = "spacemsg";
		}

		return userNameFlag;
	}

	// 注册时判断账号格式是否正确
	@RequestMapping("/isUserAccountTrue.form")
	@ResponseBody
	public String isUserAccountTrue(HttpServletRequest request) {
		String userAccount = request.getParameter("userAccount");

		// 用来标记错误信息
		String userNameFlag = "truemsg";

		// 账号是否为空
		if (userAccount == "" || userAccount == null) {
			userNameFlag = "emptymsg";
		}
		// 查询账号是否已存在
		else if (!userService.findIsUserAccountExist(userAccount).isEmpty()) {
			userNameFlag = "existmsg";
			// 账号长度是否正确
		} else if (userAccount.length() < 6 || userAccount.length() > 10) {
			userNameFlag = "lengthmsg";
			// 账号是否是全数字字母
		} else if (!userAccount.matches("[a-zA-Z0-9]+")) {
			userNameFlag = "spacemsg";
		}

		return userNameFlag;
	}

	// 注册时判断账号格式是否正确
	@RequestMapping("/checkCode.form")
	@ResponseBody
	public String checkCode(HttpServletRequest request) {
		String userEmail = request.getParameter("userEmail");

		// 判断验证码是否输入正确
		if (userEmail.equals(session.getAttribute("emailCode"))) {
			return "1";
		} else {
			return "0";
		}

	}

	// 更新用户信息
	@RequestMapping("updateUser.form")
	@ResponseBody
	public String updateUser(@RequestParam("avatar") MultipartFile avatar,
			User user, ModelMap model) {

		// 头像为空则不更新头像
		if (avatar.getSize() != 0) {

			// 上传用户头像
			UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

			if (avatar.getOriginalFilename() != ""
					&& avatar.getOriginalFilename() != null) {
				upLoadFileUtil.fileload(avatar, request);
			}

			// 改变图片路径
			user.setUserAvatar("plantResource/" + avatar.getOriginalFilename());

		}

		// 更新用户信息
		userService.updateUser(user);

		// 将新信息存到session中
		User newUser = (User) session.getAttribute("user");

		newUser.setUserName(user.getUserName());
		newUser.setUserSex(user.getUserSex());
		newUser.setUserPhone(user.getUserPhone());
		newUser.setUserAddress(user.getUserAddress());

		// 头像为空也不改变头像session
		if (avatar.getSize() != 0) {
			newUser.setUserAvatar(user.getUserAvatar());
		}

		// 更新session
		session.setAttribute("user", newUser);

		return "true";
	}

	// 更新密码
	@RequestMapping("updatePassword.form")
	public String updatePassword(User user, ModelMap model) {

		// 更新用户信息
		userService.updateUser(user);

		// 将新信息存到session中
		User newUser = (User) session.getAttribute("user");

		newUser.setUserPassword(user.getUserPassword());

		// 更新session
		session.setAttribute("user", newUser);

		return "user-password";
	}

}
