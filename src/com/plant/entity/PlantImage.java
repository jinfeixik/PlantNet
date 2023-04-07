package com.plant.entity;

//花草图片
public class PlantImage {
	// 花草图片编号
	public Integer plantImageID;
	// 花草编号
	private Integer plantID;
	// 图片地址
	public String plantImagePath;
	// 图片描述
	public String plantImageDescribe;
	// 图片风格
	private String imageStyle;
	// 图片空间
	private String imageSpace;
	// 图片主题
	private String imageTheme;
	// 图片百科
	private String imageEncyclopedia;
	// 图片季节
	private String imageSeason;
	public Integer getPlantImageID() {
		return plantImageID;
	}
	public void setPlantImageID(Integer plantImageID) {
		this.plantImageID = plantImageID;
	}
	public Integer getPlantID() {
		return plantID;
	}
	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}
	public String getPlantImagePath() {
		return plantImagePath;
	}
	public void setPlantImagePath(String plantImagePath) {
		this.plantImagePath = plantImagePath;
	}
	public String getPlantImageDescribe() {
		return plantImageDescribe;
	}
	public void setPlantImageDescribe(String plantImageDescribe) {
		this.plantImageDescribe = plantImageDescribe;
	}
	public String getImageStyle() {
		return imageStyle;
	}
	public void setImageStyle(String imageStyle) {
		this.imageStyle = imageStyle;
	}
	public String getImageSpace() {
		return imageSpace;
	}
	public void setImageSpace(String imageSpace) {
		this.imageSpace = imageSpace;
	}
	public String getImageTheme() {
		return imageTheme;
	}
	public void setImageTheme(String imageTheme) {
		this.imageTheme = imageTheme;
	}
	public String getImageEncyclopedia() {
		return imageEncyclopedia;
	}
	public void setImageEncyclopedia(String imageEncyclopedia) {
		this.imageEncyclopedia = imageEncyclopedia;
	}
	public String getImageSeason() {
		return imageSeason;
	}
	public void setImageSeason(String imageSeason) {
		this.imageSeason = imageSeason;
	}
	@Override
	public String toString() {
		return "PlantImage [plantImageID=" + plantImageID + ", plantID="
				+ plantID + ", plantImagePath=" + plantImagePath
				+ ", plantImageDescribe=" + plantImageDescribe
				+ ", imageStyle=" + imageStyle + ", imageSpace=" + imageSpace
				+ ", imageTheme=" + imageTheme + ", imageEncyclopedia="
				+ imageEncyclopedia + ", imageSeason=" + imageSeason
				+ ", getPlantImageID()=" + getPlantImageID()
				+ ", getPlantID()=" + getPlantID() + ", getPlantImagePath()="
				+ getPlantImagePath() + ", getPlantImageDescribe()="
				+ getPlantImageDescribe() + ", getImageStyle()="
				+ getImageStyle() + ", getImageSpace()=" + getImageSpace()
				+ ", getImageTheme()=" + getImageTheme()
				+ ", getImageEncyclopedia()=" + getImageEncyclopedia()
				+ ", getImageSeason()=" + getImageSeason() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	

}
