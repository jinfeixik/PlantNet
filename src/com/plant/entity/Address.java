package com.plant.entity;

//地址
public class Address {
	// 地址编号
	public Integer addressID;
	// 用户编号
	private Integer userID;
	// 是否默认
	public String isDefault;
	// 联系电话
	public String addressPhone;
	// 收件人
	private String recipient;
	// 省
	private String province;
	// 市
	private String city;
	// 县
	private String county;
	//详细地址
	private String addressInfo;
	public Integer getAddressID() {
		return addressID;
	}
	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getIsDefault() {
		return isDefault;
	}
	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}
	public String getAddressPhone() {
		return addressPhone;
	}
	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCounty() {
		return county;
	}
	public void setCounty(String county) {
		this.county = county;
	}
	public String getAddressInfo() {
		return addressInfo;
	}
	public void setAddressInfo(String addressInfo) {
		this.addressInfo = addressInfo;
	}
	@Override
	public String toString() {
		return "Address [addressID=" + addressID + ", userID=" + userID
				+ ", isDefault=" + isDefault + ", addressPhone=" + addressPhone
				+ ", recipient=" + recipient + ", province=" + province
				+ ", city=" + city + ", county=" + county + ", addressInfo="
				+ addressInfo + ", getAddressID()=" + getAddressID()
				+ ", getUserID()=" + getUserID() + ", getIsDefault()="
				+ getIsDefault() + ", getAddressPhone()=" + getAddressPhone()
				+ ", getRecipient()=" + getRecipient() + ", getProvince()="
				+ getProvince() + ", getCity()=" + getCity() + ", getCounty()="
				+ getCounty() + ", getAddressInfo()=" + getAddressInfo()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
	

}
