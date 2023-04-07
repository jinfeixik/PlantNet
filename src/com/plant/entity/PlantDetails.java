package com.plant.entity;

//花草详情
public class PlantDetails {
	// 详情编号
	public Integer plantDetailsID;
	// 花草编号
	private Integer plantID;
	// 花草价格
	public Double plantPrice;
	// 花草销量
	public Integer plantSales;
	// 花草描述
	private String plantDescribe;
	// 花草库存
	private Integer plantStock;
	// 详情状态
	private String plantDetailsState;
	
	// 详情图片(实体)
	private PlantDetailsImage plantDetailsImage;
	
	// 花草信息(实体)
	public Plant plant;
	
	public Integer getPlantDetailsID() {
		return plantDetailsID;
	}

	public void setPlantDetailsID(Integer plantDetailsID) {
		this.plantDetailsID = plantDetailsID;
	}

	public Integer getPlantID() {
		return plantID;
	}

	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}

	public Double getPlantPrice() {
		return plantPrice;
	}

	public void setPlantPrice(Double plantPrice) {
		this.plantPrice = plantPrice;
	}

	public Integer getPlantSales() {
		return plantSales;
	}

	public void setPlantSales(Integer plantSales) {
		this.plantSales = plantSales;
	}

	public String getPlantDescribe() {
		return plantDescribe;
	}

	public void setPlantDescribe(String plantDescribe) {
		this.plantDescribe = plantDescribe;
	}

	public Integer getPlantStock() {
		return plantStock;
	}

	public void setPlantStock(Integer plantStock) {
		this.plantStock = plantStock;
	}

	public String getPlantDetailsState() {
		return plantDetailsState;
	}

	public void setPlantDetailsState(String plantDetailsState) {
		this.plantDetailsState = plantDetailsState;
	}

	public Plant getPlant() {
		return plant;
	}

	public void setPlant(Plant plant) {
		this.plant = plant;
	}

	public PlantDetailsImage getPlantDetailsImage() {
		return plantDetailsImage;
	}

	public void setPlantDetailsImage(PlantDetailsImage plantDetailsImage) {
		this.plantDetailsImage = plantDetailsImage;
	}

	@Override
	public String toString() {
		return "PlantDetails [plantDetailsID=" + plantDetailsID + ", plantID="
				+ plantID + ", plantPrice=" + plantPrice + ", plantSales="
				+ plantSales + ", plantDescribe=" + plantDescribe
				+ ", plantStock=" + plantStock + ", plantDetailsState="
				+ plantDetailsState + ", plantDetailsImage="
				+ plantDetailsImage + ", plant=" + plant
				+ ", getPlantDetailsID()=" + getPlantDetailsID()
				+ ", getPlantID()=" + getPlantID() + ", getPlantPrice()="
				+ getPlantPrice() + ", getPlantSales()=" + getPlantSales()
				+ ", getPlantDescribe()=" + getPlantDescribe()
				+ ", getPlantStock()=" + getPlantStock()
				+ ", getPlantDetailsState()=" + getPlantDetailsState()
				+ ", getPlant()=" + getPlant() + ", getPlantDetailsImage()="
				+ getPlantDetailsImage() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	
	

}
