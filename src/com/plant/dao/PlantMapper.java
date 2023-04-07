package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.Plant;

@Component
public interface PlantMapper {

	// 插入花草信息
	public void addPlant(Plant plant);

	// 查找花草信息
	public List<Plant> findPlant();
	
	//搜索花草信息
	public List<Plant> findPlant(Plant plant);
	
	//查找已上架主页花草信息
	public List<Plant> findIndexPlant(Plant plant);
	
	//查找已上架花草信息根据浏览次数排序
	public List<Plant> findPlantOrderByViewTimes(Plant plant);
    
	//查找已上架花草信息根据收藏次数排序
	public List<Plant> findPlantOrderByCollectNumber(Plant plant);
	
	//查询单条花草信息
	public Plant findPlantByID(Integer plantID);

	// 删除花草信息
	public void deletePlantByID(Integer plantID);

	// 更新花草状态
	public void updatePlantState(Plant plant);
    
	// 更新花草信息
	public void updatePlant(Plant plant);

}
