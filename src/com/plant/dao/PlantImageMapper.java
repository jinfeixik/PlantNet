package com.plant.dao;

import org.springframework.stereotype.Component;

import com.plant.entity.PlantImage;

@Component
public interface PlantImageMapper {
	
	//插入花草图片
	public void addPlantImage(PlantImage plantImage);
	
	//删除花草图片
	public void deletePlantImageByID(Integer plantID);
    
	//更新花草图片
	public void updatePlantImage(PlantImage plantImage);

}
