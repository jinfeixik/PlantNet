package com.plant.entity;

//详情图片
public class PlantDetailsImage {
	// 详情图片编号
	public Integer plantDetailsImageID;
	// 详情编号
	private Integer plantDetailsID;
	// 图片地址
	public String plantDetailsImagePath;
	// 图片描述
	public String plantDetailsImageDescribe;
	
	public Integer getPlantDetailsImageID() {
		return plantDetailsImageID;
	}
	public void setPlantDetailsImageID(Integer plantDetailsImageID) {
		this.plantDetailsImageID = plantDetailsImageID;
	}
	public Integer getPlantDetailsID() {
		return plantDetailsID;
	}
	public void setPlantDetailsID(Integer plantDetailsID) {
		this.plantDetailsID = plantDetailsID;
	}
	public String getPlantDetailsImagePath() {
		return plantDetailsImagePath;
	}
	public void setPlantDetailsImagePath(String plantDetailsImagePath) {
		this.plantDetailsImagePath = plantDetailsImagePath;
	}
	public String getPlantDetailsImageDescribe() {
		return plantDetailsImageDescribe;
	}
	public void setPlantDetailsImageDescribe(String plantDetailsImageDescribe) {
		this.plantDetailsImageDescribe = plantDetailsImageDescribe;
	}
	@Override
	public String toString() {
		return "PlantDetailsImage [plantDetailsImageID=" + plantDetailsImageID
				+ ", plantDetailsID=" + plantDetailsID
				+ ", plantDetailsImagePath=" + plantDetailsImagePath
				+ ", plantDetailsImageDescribe=" + plantDetailsImageDescribe
				+ ", getPlantDetailsImageID()=" + getPlantDetailsImageID()
				+ ", getPlantDetailsID()=" + getPlantDetailsID()
				+ ", getPlantDetailsImagePath()=" + getPlantDetailsImagePath()
				+ ", getPlantDetailsImageDescribe()="
				+ getPlantDetailsImageDescribe() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	

}
