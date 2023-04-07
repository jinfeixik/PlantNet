package com.plant.dao;

import org.springframework.stereotype.Component;

import com.plant.entity.PlantDetailsImage;

@Component
public interface PlantDetailsImageMapper {
	
	//插入花草详情图片
	public void addPlantDetailsImage(PlantDetailsImage plantDetailsImage);

	//更新花草详情图片
	public void updatePlantDetailsImage(PlantDetailsImage plantDetailsImage);

	//删除花草详情图片
	public void deletePlantDetailsImageByID(Integer plantDetailsID);

}
