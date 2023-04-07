package com.plant.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import com.plant.entity.PlantDetails;

@Component
public interface PlantDetailsMapper {
	
	//插入花草详情信息
	public void addPlantDetails(PlantDetails plantDetails);

	//查询花草详情信息
	public List<PlantDetails> findPlantDetails();
	
	//搜索花草详情信息(条件)
	public List<PlantDetails> findPlantDetails(PlantDetails plantDetails);
    
	//查询单条花草详情信息
	public PlantDetails findPlantDetailsByID(@Param("plantDetailsID")Integer plantDetailsID);

	//更新花草详情信息
	public void updatePlantDetails(PlantDetails plantDetails);
    
	//删除花草详情信息
	public void deletePlantDetailsByID(Integer plantDetailsID);
    
	//根据花草编号查询出所有花草详情信息
	public List<PlantDetails> findPlantDetailsByPlantID(@Param("plantID")Integer plantID);

}
