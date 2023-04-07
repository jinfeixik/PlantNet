package com.plant.service;

import java.util.List;

import com.plant.entity.PlantCollect;

public interface PlantCollectService {

	//添加花草收藏
	public void addPlantCollect(Integer plantID);
    
	//删除花草收藏
	public void deletePlantCollect(Integer plantID);

	//查询花草收藏信息（花草编号,用户编号）
	public List<PlantCollect> findPlantCollect(Integer plantID);
    
	//根据收藏查找花草总收藏量
	public PlantCollect findSumCollectByPlantCollectTime(
			PlantCollect plantCollect);

}
