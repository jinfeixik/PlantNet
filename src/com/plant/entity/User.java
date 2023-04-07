package com.plant.entity;

//用户信息
public class User {
	// 用户编号
	public Integer userID;
	// 用户昵称
	private String userName;
	// 用户账号
	public String userAccount;
	// 用户密码
	public String userPassword;
	// 用户邮箱
	private String userEmail;
	// 注册时间
	private String userCreateTime;
	// 用户头像
	private String userAvatar;
	// 用户类型
	private String userType;
	// 用户状态
	private String userState;
	// 用户地址
	private String userAddress;
	// 用户电话
	private String userPhone;
	// 用户性别
	private String userSex;
	
	//开始时间(额外字段,作条件)
	private String startTime;
	
	//结束时间(额外字段,作条件)
	private String endTime;

	public User() {
		super();
	}

	public User(Integer userID, String userName, String userAccount,
			String userPassword, String userEmail, String userCreateTime,
			String userAvatar, String userType, String userState,
			String userAddress, String userPhone, String userSex) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userAccount = userAccount;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userCreateTime = userCreateTime;
		this.userAvatar = userAvatar;
		this.userType = userType;
		this.userState = userState;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userSex = userSex;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserCreateTime() {
		return userCreateTime;
	}

	public void setUserCreateTime(String userCreateTime) {
		this.userCreateTime = userCreateTime;
	}

	public String getUserAvatar() {
		return userAvatar;
	}

	public void setUserAvatar(String userAvatar) {
		this.userAvatar = userAvatar;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName
				+ ", userAccount=" + userAccount + ", userPassword="
				+ userPassword + ", userEmail=" + userEmail
				+ ", userCreateTime=" + userCreateTime + ", userAvatar="
				+ userAvatar + ", userType=" + userType + ", userState="
				+ userState + ", userAddress=" + userAddress + ", userPhone="
				+ userPhone + ", userSex=" + userSex + ", startTime="
				+ startTime + ", endTime=" + endTime + ", getUserID()="
				+ getUserID() + ", getUserName()=" + getUserName()
				+ ", getUserAccount()=" + getUserAccount()
				+ ", getUserPassword()=" + getUserPassword()
				+ ", getUserEmail()=" + getUserEmail()
				+ ", getUserCreateTime()=" + getUserCreateTime()
				+ ", getUserAvatar()=" + getUserAvatar() + ", getUserType()="
				+ getUserType() + ", getUserState()=" + getUserState()
				+ ", getUserAddress()=" + getUserAddress()
				+ ", getUserPhone()=" + getUserPhone() + ", getUserSex()="
				+ getUserSex() + ", getStartTime()=" + getStartTime()
				+ ", getEndTime()=" + getEndTime() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	

}
