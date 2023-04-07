package com.plant.entity;

//购物车
public class ShoppingCart {
	// 购物车编号
	public Integer shoppingCartID;
	
	// 用户编号
	private Integer userID;
	
	// 详情编号
	public Integer plantDetailsID;
	
	// 购物车数量
	public Integer shoppingCartNumber;
	
	// 加入时间
	private String shoppingCartCreateTime;
	
	// 购物车金额
	private Double shoppingCartAmount;
	
	//花草详情(实体)
    private PlantDetails plantDetails;
    
    //花草图片(实体)
    private PlantDetailsImage plantDetailsImage;
    
	public Integer getShoppingCartID() {
		return shoppingCartID;
	}
	public void setShoppingCartID(Integer shoppingCartID) {
		this.shoppingCartID = shoppingCartID;
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
	public Integer getShoppingCartNumber() {
		return shoppingCartNumber;
	}
	public void setShoppingCartNumber(Integer shoppingCartNumber) {
		this.shoppingCartNumber = shoppingCartNumber;
	}
	public String getShoppingCartCreateTime() {
		return shoppingCartCreateTime;
	}
	public void setShoppingCartCreateTime(String shoppingCartCreateTime) {
		this.shoppingCartCreateTime = shoppingCartCreateTime;
	}
	public Double getShoppingCartAmount() {
		return shoppingCartAmount;
	}
	public void setShoppingCartAmount(Double shoppingCartAmount) {
		this.shoppingCartAmount = shoppingCartAmount;
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
	@Override
	public String toString() {
		return "ShoppingCart [shoppingCartID=" + shoppingCartID + ", userID="
				+ userID + ", plantDetailsID=" + plantDetailsID
				+ ", shoppingCartNumber=" + shoppingCartNumber
				+ ", shoppingCartCreateTime=" + shoppingCartCreateTime
				+ ", shoppingCartAmount=" + shoppingCartAmount
				+ ", plantDetails=" + plantDetails + ", plantDetailsImage="
				+ plantDetailsImage + ", getShoppingCartID()="
				+ getShoppingCartID() + ", getUserID()=" + getUserID()
				+ ", getPlantDetailsID()=" + getPlantDetailsID()
				+ ", getShoppingCartNumber()=" + getShoppingCartNumber()
				+ ", getShoppingCartCreateTime()="
				+ getShoppingCartCreateTime() + ", getShoppingCartAmount()="
				+ getShoppingCartAmount() + ", getPlantDetails()="
				+ getPlantDetails() + ", getPlantDetailsImage()="
				+ getPlantDetailsImage() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	

}
