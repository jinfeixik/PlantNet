package com.plant.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.PlantDetails;
import com.plant.entity.PlantDetailsImage;

public interface PlantDetailsService {
	
	//添加花草详情信息
	public void addPlantDetails(MultipartFile imagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage);
    
	//查找花草详情信息
	public List<PlantDetails> findPlantDetails();
    
	//根据花草详情编号查询单条花草详情信息
	public PlantDetails findPlantDetailsByID(Integer plantDetailsID);
    
	//更新花草详情信息
	public void updatePlantDetails(MultipartFile imagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage);

	//更新花草详情状态
	public void updatePlantDetailsState(PlantDetails plantDetails);
	
	//更新库存数量
	public void updatePlantStock(PlantDetails plantDetails);
	
	//更新销量
	public void updatePlantSales(PlantDetails plantDetails);

	//搜索花草详情信息
	public List<PlantDetails> findPlantDetailsByPlantDescribe(PlantDetails plantDetails);
	
	//根据花草编号查询出所有花草信息
	public List<PlantDetails> findPlantDetailsByPlantID(Integer plantID);
    
	//多选删除花草详情
	public void deletePlantDetails(String plantDetailsDeleteStr);
    
	//单选删除花草详情
	public void deletePlantDetailsByID(Integer plantDetailsID);

}
