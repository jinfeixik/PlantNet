package com.plant.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.Plant;
import com.plant.entity.PlantImage;
import com.plant.entity.PlantInfo;

public interface PlantService {

	// 添加花草信息
	public String addPlant(MultipartFile imageFile, Plant plant,
			PlantInfo plantInfo, PlantImage plantImage);

	// 更新花草信息
	public void updatePlant(MultipartFile imageFile, Plant plant,
			PlantInfo plantInfo, PlantImage plantImage);
	 
	// 更新花草信息中的浏览次数
	public void updatePlantSetViewTimes(Plant plant);
	
	// 更新花草信息中的收藏次数
	public void updatePlantSetPlantCollectNumber(Plant plant);

	// 查找花草信息
	public List<Plant> findPlant();
	
	//搜索花草信息
	public List<Plant> searchPlant(Plant plant);
	
	//查找已上架主页花草信息
	public List<Plant> findIndexPlant(Plant plant);
	
	//查找已上架花草信息根据浏览次数排序
	public List<Plant> findPlantOrderByViewTimes(Plant plant);
	
	//查找已上架花草信息根据收藏次数排序
	public List<Plant> findPlantOrderByCollectNumber(Plant plant);
	
	// 根据花草编号查询单条花草信息
	public Plant findPlantByID(Integer plantID);

	// 多选删除花草信息
	public void deletePlant(String plantDeleteStr);

	// 单选删除花草信息
	public void deletePlantByID(Integer plantID);

	// 上架花草
	public void upPlant(Integer plantID);

	// 下架花草
	public void downPlant(Integer plantID);

	

}
