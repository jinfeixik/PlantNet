package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Plant;
import com.plant.service.PlantService;

@Controller
public class AdminPlantInfoController {

	@Autowired
	private PlantService plantService;

	// 进入花草简介列表页面
	@RequestMapping("plantInfo-list.form")
	public String plantInfoList(ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.findPlant());

		return "hui/plantInfo-list";
	}

	// 条件搜索花草简介
	@RequestMapping("searchPlantInfo.form")
	public String searchPlantInfo(Plant plant, ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.searchPlant(plant));

		return "hui/plantInfo-list";
	}

}
