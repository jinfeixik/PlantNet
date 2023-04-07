package com.plant.dao;

import org.springframework.stereotype.Component;

import com.plant.entity.PlantInfo;

@Component
public interface PlantInfoMapper {

	// 插入花草简介
	public void addPlantInfo(PlantInfo plantInfo);

	// 删除花草简介
	public void deletePlantInfoByID(Integer plantID);
    
	// 更新花草简介
	public void updatePlantInfo(PlantInfo plantInfo);
}
