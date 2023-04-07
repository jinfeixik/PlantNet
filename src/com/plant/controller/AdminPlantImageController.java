package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Plant;
import com.plant.service.PlantService;

@Controller
public class AdminPlantImageController {
	
	@Autowired
	private PlantService plantService;
	

	// 进入花草图片列表页面
	@RequestMapping("plantImage-list.form")
	public String plantImageList(ModelMap model) {
		
		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.findPlant());

		return "hui/plantImage-list";
	}
	
	// 条件搜索花草图片
	@RequestMapping("searchPlantImage.form")
	public String searchPlantImage(Plant plant, ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.searchPlant(plant));

		return "hui/plantImage-list";
	}

}
