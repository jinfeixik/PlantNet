package com.plant.entity;

public class PlantCollect {

	// 花草收藏编号
	public Integer plantCollectID;
	
	// 用户编号
	private Integer userID;
	
	// 花草编号
	public Integer plantID;
	
	// 花草收藏时间
	public String plantCollectTime;
	
	// 花草信息(实体)
	private Plant plant;
	
	// 花草图片(实体)
	private PlantImage plantImage;
	
	//总收藏量（聚合）
    public Integer sumCollectNumber;
	
	public Integer getPlantCollectID() {
		return plantCollectID;
	}
	public void setPlantCollectID(Integer plantCollectID) {
		this.plantCollectID = plantCollectID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getPlantID() {
		return plantID;
	}
	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}
	public String getPlantCollectTime() {
		return plantCollectTime;
	}
	public void setPlantCollectTime(String plantCollectTime) {
		this.plantCollectTime = plantCollectTime;
	}	
	public Plant getPlant() {
		return plant;
	}
	public void setPlant(Plant plant) {
		this.plant = plant;
	}
	public PlantImage getPlantImage() {
		return plantImage;
	}
	public void setPlantImage(PlantImage plantImage) {
		this.plantImage = plantImage;
	}		
	public Integer getSumCollectNumber() {
		return sumCollectNumber;
	}
	public void setSumCollectNumber(Integer sumCollectNumber) {
		this.sumCollectNumber = sumCollectNumber;
	}
	@Override
	public String toString() {
		return "PlantCollect [plantCollectID=" + plantCollectID + ", userID="
				+ userID + ", plantID=" + plantID + ", plantCollectTime="
				+ plantCollectTime + ", plant=" + plant + ", plantImage="
				+ plantImage + ", sumCollectNumber=" + sumCollectNumber
				+ ", getPlantCollectID()=" + getPlantCollectID()
				+ ", getUserID()=" + getUserID() + ", getPlantID()="
				+ getPlantID() + ", getPlantCollectTime()="
				+ getPlantCollectTime() + ", getPlant()=" + getPlant()
				+ ", getPlantImage()=" + getPlantImage()
				+ ", getSumCollectNumber()=" + getSumCollectNumber()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
