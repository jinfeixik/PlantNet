package com.plant.entity;

public class Order {

	// 订单编号
	public Integer orderID;
	// 用户编号
	private Integer userID;
	// 详情编号
	public Integer plantDetailsID;
	// 订单数量
	public Integer orderNumber;
	// 提交时间
	private String orderCreateTime;
	// 支付方式
	private String paymentMethod;
	// 地址编号
	private Integer addressID;	
	// 订单状态
	private String orderState;
	// 订单金额
	private Double orderAmount;
	// 订单编码
	private String orderCode;
	
	//花草详情（实体）
	public PlantDetails plantDetails;
	
	//详情图片（实体）
	private PlantDetailsImage plantDetailsImage;
	
	//用户（实体）
	public User user;
	
	//地址（实体）
	public Address address;
	
	//开始时间(额外字段,作条件)
	private String startTime;
	
	//结束时间(额外字段,作条件)
	private String endTime;
	
	// 订单条数（聚合）
	public Integer orderCount;
	
	//总金额（聚合）
	public Double sumOrderAmount;
	
	public Integer getOrderID() {
		return orderID;
	}
	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getPlantDetailsID() {
		return plantDetailsID;
	}
	public void setPlantDetailsID(Integer plantDetailsID) {
		this.plantDetailsID = plantDetailsID;
	}
	public Integer getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(Integer orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getOrderCreateTime() {
		return orderCreateTime;
	}
	public void setOrderCreateTime(String orderCreateTime) {
		this.orderCreateTime = orderCreateTime;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public Integer getAddressID() {
		return addressID;
	}
	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	public Double getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(Double orderAmount) {
		this.orderAmount = orderAmount;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public PlantDetails getPlantDetails() {
		return plantDetails;
	}
	public void setPlantDetails(PlantDetails plantDetails) {
		this.plantDetails = plantDetails;
	}
	public PlantDetailsImage getPlantDetailsImage() {
		return plantDetailsImage;
	}
	public void setPlantDetailsImage(PlantDetailsImage plantDetailsImage) {
		this.plantDetailsImage = plantDetailsImage;
	}	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	public Integer getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}
	public Double getSumOrderAmount() {
		return sumOrderAmount;
	}
	public void setSumOrderAmount(Double sumOrderAmount) {
		this.sumOrderAmount = sumOrderAmount;
	}
	@Override
	public String toString() {
		return "Order [orderID=" + orderID + ", userID=" + userID
				+ ", plantDetailsID=" + plantDetailsID + ", orderNumber="
				+ orderNumber + ", orderCreateTime=" + orderCreateTime
				+ ", paymentMethod=" + paymentMethod + ", addressID="
				+ addressID + ", orderState=" + orderState + ", orderAmount="
				+ orderAmount + ", orderCode=" + orderCode + ", plantDetails="
				+ plantDetails + ", plantDetailsImage=" + plantDetailsImage
				+ ", user=" + user + ", address=" + address + ", startTime="
				+ startTime + ", endTime=" + endTime + ", orderCount="
				+ orderCount + ", sumOrderAmount=" + sumOrderAmount
				+ ", getOrderID()=" + getOrderID() + ", getUserID()="
				+ getUserID() + ", getPlantDetailsID()=" + getPlantDetailsID()
				+ ", getOrderNumber()=" + getOrderNumber()
				+ ", getOrderCreateTime()=" + getOrderCreateTime()
				+ ", getPaymentMethod()=" + getPaymentMethod()
				+ ", getAddressID()=" + getAddressID() + ", getOrderState()="
				+ getOrderState() + ", getOrderAmount()=" + getOrderAmount()
				+ ", getOrderCode()=" + getOrderCode() + ", getPlantDetails()="
				+ getPlantDetails() + ", getPlantDetailsImage()="
				+ getPlantDetailsImage() + ", getAddress()=" + getAddress()
				+ ", getUser()=" + getUser() + ", getStartTime()="
				+ getStartTime() + ", getEndTime()=" + getEndTime()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
	
	
	

}
