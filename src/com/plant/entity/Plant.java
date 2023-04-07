package com.plant.entity;

//花草信息
public class Plant {
	// 花草编号
	public Integer plantID;
	// 花草名称
	private String plantName;
	// 花草状态
	public String plantState;
	// 上架时间
	public String plantCreateTime;
	// 所属地区
	private String plantAddress;
	// 浏览次数
	private Integer viewTimes;
	// 花草类型
	private String plantType;
	// 花草获赞
	private Integer plantLikesNumber;
	// 花草收藏
	private Integer plantCollectNumber;
	// 英文名称
	private String plantEnglishName;
	
	//花草简介(实体)
	private PlantInfo plantInfo;
	
	//花草图片(实体)
	public PlantImage plantImage;
	
	//开始时间(额外字段,作条件)
	private String startTime;
	
	//结束时间(额外字段,作条件)
	private String endTime;
	
	//样式高度(额外字段,作样式展示)
	private Integer styleHeight; 
	
	public Integer getPlantID() {
		return plantID;
	}
	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}
	public String getPlantName() {
		return plantName;
	}
	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}
	public String getPlantState() {
		return plantState;
	}
	public void setPlantState(String plantState) {
		this.plantState = plantState;
	}
	public String getPlantCreateTime() {
		return plantCreateTime;
	}
	public void setPlantCreateTime(String plantCreateTime) {
		this.plantCreateTime = plantCreateTime;
	}
	public String getPlantAddress() {
		return plantAddress;
	}
	public void setPlantAddress(String plantAddress) {
		this.plantAddress = plantAddress;
	}
	public Integer getViewTimes() {
		return viewTimes;
	}
	public void setViewTimes(Integer viewTimes) {
		this.viewTimes = viewTimes;
	}
	public String getPlantType() {
		return plantType;
	}
	public void setPlantType(String plantType) {
		this.plantType = plantType;
	}
	public Integer getPlantLikesNumber() {
		return plantLikesNumber;
	}
	public void setPlantLikesNumber(Integer plantLikesNumber) {
		this.plantLikesNumber = plantLikesNumber;
	}
	public Integer getPlantCollectNumber() {
		return plantCollectNumber;
	}
	public void setPlantCollectNumber(Integer plantCollectNumber) {
		this.plantCollectNumber = plantCollectNumber;
	}
	public String getPlantEnglishName() {
		return plantEnglishName;
	}
	public void setPlantEnglishName(String plantEnglishName) {
		this.plantEnglishName = plantEnglishName;
	}
	public PlantInfo getPlantInfo() {
		return plantInfo;
	}
	public void setPlantInfo(PlantInfo plantInfo) {
		this.plantInfo = plantInfo;
	}
	
	public PlantImage getPlantImage() {
		return plantImage;
	}
	public void setPlantImage(PlantImage plantImage) {
		this.plantImage = plantImage;
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
	public Integer getStyleHeight() {
		return styleHeight;
	}
	public void setStyleHeight(Integer styleHeight) {
		this.styleHeight = styleHeight;
	}
	@Override
	public String toString() {
		return "Plant [plantID=" + plantID + ", plantName=" + plantName
				+ ", plantState=" + plantState + ", plantCreateTime="
				+ plantCreateTime + ", plantAddress=" + plantAddress
				+ ", viewTimes=" + viewTimes + ", plantType=" + plantType
				+ ", plantLikesNumber=" + plantLikesNumber
				+ ", plantCollectNumber=" + plantCollectNumber
				+ ", plantEnglishName=" + plantEnglishName + ", plantInfo="
				+ plantInfo + ", plantImage=" + plantImage + ", getPlantID()="
				+ getPlantID() + ", getPlantName()=" + getPlantName()
				+ ", getPlantState()=" + getPlantState()
				+ ", getPlantCreateTime()=" + getPlantCreateTime()
				+ ", getPlantAddress()=" + getPlantAddress()
				+ ", getViewTimes()=" + getViewTimes() + ", getPlantType()="
				+ getPlantType() + ", getPlantLikesNumber()="
				+ getPlantLikesNumber() + ", getPlantCollectNumber()="
				+ getPlantCollectNumber() + ", getPlantEnglishName()="
				+ getPlantEnglishName() + ", getPlantInfo()=" + getPlantInfo()
				+ ", getPlantImage()=" + getPlantImage() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	
}
