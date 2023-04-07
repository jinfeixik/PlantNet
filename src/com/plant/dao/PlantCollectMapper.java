package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.PlantCollect;

@Component
public interface PlantCollectMapper {
    
	//添加花草收藏信息
	public void addPlantCollect(PlantCollect plantCollect);
    
	//删除花草收藏信息
	public void deletePlantCollect(PlantCollect plantCollect);
    
	//条件查找花草收藏信息
	public List<PlantCollect> findPlantCollect(PlantCollect plantCollect);
    
	//根据时间查找花草总收藏量
	public PlantCollect findSumCollectByPlantCollectTime(
			PlantCollect plantCollect);

}
