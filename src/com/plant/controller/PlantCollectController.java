package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Plant;
import com.plant.service.PlantCollectService;
import com.plant.service.PlantService;

@Controller
public class PlantCollectController {
	
	@Autowired
	private PlantService plantService;
	
	@Autowired
	private PlantCollectService plantCollectService;
	

	// 收藏花草/取消收藏
	@RequestMapping("collectPlant.form")
	public String collectPlant(ModelMap model,Plant plant,String collectFlag) {
		
		//更新花草收藏数量
		plantService.updatePlantSetPlantCollectNumber(plant);
		
		//如果收藏标记为收藏
		if(collectFlag.equals("收藏")){
			
			plantCollectService.addPlantCollect(plant.getPlantID());
		
	    //如果收藏标记为取消收藏
		}else if(collectFlag.equals("取消收藏")){
			
			plantCollectService.deletePlantCollect(plant.getPlantID());
			
		}
		
		return "artical-index";
	}
	
	

}
