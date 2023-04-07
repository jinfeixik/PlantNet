package com.plant.entity;

//花草简介
public class PlantInfo {
	// 简介编号
	public Integer plantInfoID;
	// 花草编号
	private Integer plantID;
	// 花草分类
	public String plantClass;
	// 花草科属
	public String plantDepart;
	// 盛花期
	private String plantFlowering;
	// 花草介绍
	private String plantIntroduce;
	// 形态特征
	private String plantFeature;
	// 生态习性
	private String plantHabit;
	// 栽培技术
	private String plantTechnique;
	// 繁殖方式
	private String plantBreed;
	// 病害防治
	private String plantPestControl;
	// 分布区域
	private String plantArea;
	// 作用用途
	private String plantFunction;
	// 花语
	private String plantLanguage;
	public Integer getPlantInfoID() {
		return plantInfoID;
	}
	public void setPlantInfoID(Integer plantInfoID) {
		this.plantInfoID = plantInfoID;
	}
	public Integer getPlantID() {
		return plantID;
	}
	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}
	public String getPlantClass() {
		return plantClass;
	}
	public void setPlantClass(String plantClass) {
		this.plantClass = plantClass;
	}
	public String getPlantDepart() {
		return plantDepart;
	}
	public void setPlantDepart(String plantDepart) {
		this.plantDepart = plantDepart;
	}
	public String getPlantFlowering() {
		return plantFlowering;
	}
	public void setPlantFlowering(String plantFlowering) {
		this.plantFlowering = plantFlowering;
	}
	public String getPlantIntroduce() {
		return plantIntroduce;
	}
	public void setPlantIntroduce(String plantIntroduce) {
		this.plantIntroduce = plantIntroduce;
	}
	public String getPlantFeature() {
		return plantFeature;
	}
	public void setPlantFeature(String plantFeature) {
		this.plantFeature = plantFeature;
	}
	public String getPlantHabit() {
		return plantHabit;
	}
	public void setPlantHabit(String plantHabit) {
		this.plantHabit = plantHabit;
	}
	public String getPlantTechnique() {
		return plantTechnique;
	}
	public void setPlantTechnique(String plantTechnique) {
		this.plantTechnique = plantTechnique;
	}
	public String getPlantBreed() {
		return plantBreed;
	}
	public void setPlantBreed(String plantBreed) {
		this.plantBreed = plantBreed;
	}
	public String getPlantPestControl() {
		return plantPestControl;
	}
	public void setPlantPestControl(String plantPestControl) {
		this.plantPestControl = plantPestControl;
	}
	public String getPlantArea() {
		return plantArea;
	}
	public void setPlantArea(String plantArea) {
		this.plantArea = plantArea;
	}
	public String getPlantFunction() {
		return plantFunction;
	}
	public void setPlantFunction(String plantFunction) {
		this.plantFunction = plantFunction;
	}
	public String getPlantLanguage() {
		return plantLanguage;
	}
	public void setPlantLanguage(String plantLanguage) {
		this.plantLanguage = plantLanguage;
	}
	@Override
	public String toString() {
		return "PlantInfo [plantInfoID=" + plantInfoID + ", plantID=" + plantID
				+ ", plantClass=" + plantClass + ", plantDepart=" + plantDepart
				+ ", plantFlowering=" + plantFlowering + ", plantIntroduce="
				+ plantIntroduce + ", plantFeature=" + plantFeature
				+ ", plantHabit=" + plantHabit + ", plantTechnique="
				+ plantTechnique + ", plantBreed=" + plantBreed
				+ ", plantPestControl=" + plantPestControl + ", plantArea="
				+ plantArea + ", plantFunction=" + plantFunction
				+ ", plantLanguage=" + plantLanguage + ", getPlantInfoID()="
				+ getPlantInfoID() + ", getPlantID()=" + getPlantID()
				+ ", getPlantClass()=" + getPlantClass()
				+ ", getPlantDepart()=" + getPlantDepart()
				+ ", getPlantFlowering()=" + getPlantFlowering()
				+ ", getPlantIntroduce()=" + getPlantIntroduce()
				+ ", getPlantFeature()=" + getPlantFeature()
				+ ", getPlantHabit()=" + getPlantHabit()
				+ ", getPlantTechnique()=" + getPlantTechnique()
				+ ", getPlantBreed()=" + getPlantBreed()
				+ ", getPlantPestControl()=" + getPlantPestControl()
				+ ", getPlantArea()=" + getPlantArea()
				+ ", getPlantFunction()=" + getPlantFunction()
				+ ", getPlantLanguage()=" + getPlantLanguage()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
