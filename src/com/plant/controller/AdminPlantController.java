package com.plant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.Plant;
import com.plant.entity.PlantImage;
import com.plant.entity.PlantInfo;
import com.plant.service.PlantService;

@Controller
public class AdminPlantController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@Autowired
	private PlantService plantService;

	// 花草列表展示
	@RequestMapping("plant-list.form")
	public String plantList(ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.findPlant());

		return "hui/plant-list";
	}
	
	// 条件搜索花草
	@RequestMapping("searchPlant.form")
	public String searchPlant(Plant plant,ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLists", plantService.searchPlant(plant));

		return "hui/plant-list";
	}

	// 花草编辑(数据回显)
	@RequestMapping("plant-edit.form")
	public String plantEdit(Integer plantID, ModelMap model) {

		// 查找花草总数据并传到页面中
		model.put("plantLine", plantService.findPlantByID(plantID));

		// 为花草类型五个分类分别传值
		if (plantService.findPlantByID(plantID).getPlantType() != "") {

			String[] typeStrs = plantService.findPlantByID(plantID)
					.getPlantType().split(",");

			// 类型字符串符合格式才赋值
			if (typeStrs.length == 5) {

				model.put("typeStr", typeStrs[0]);
				model.put("funStr", typeStrs[1]);
				model.put("enStr", typeStrs[2]);
				model.put("timeStr", typeStrs[3]);
				model.put("hardStr", typeStrs[4]);
			}

		}

		return "hui/plant-add";
	}

	// 进入花草添加页面
	@RequestMapping("plant-add.form")
	public String plantAdd() {

		return "hui/plant-add";
	}

	// 添加花草信息
	@RequestMapping("addPlant.form")
	@ResponseBody
	public String addPlant(@RequestParam("imageFile") MultipartFile imageFile,
			Plant plant, PlantInfo plantInfo, PlantImage plantImage) {

		plantService.addPlant(imageFile, plant, plantInfo, plantImage);

		return "true";
	}

	// 编辑花草信息
	@RequestMapping("updatePlant.form")
	@ResponseBody
	public String updatePlant(@RequestParam("imageFile") MultipartFile imageFile,
			Plant plant, PlantInfo plantInfo, PlantImage plantImage) {

		plantService.updatePlant(imageFile, plant, plantInfo, plantImage);

		return "true";
	}

	// 多选删除花草信息
	@RequestMapping("deletePlant.form")
	@ResponseBody
	public String deletePlant(String plantDeleteStr) {

		// 如果多选字符串不为空
		if (plantDeleteStr != "") {
			plantService.deletePlant(plantDeleteStr);
		}

		return "true";
	}

	// 单选删除花草信息
	@RequestMapping("deletePlantByID.form")
	@ResponseBody
	public String deletePlantByID(Integer plantID) {

		// 如果花草编号不为空
		if (plantID != null) {
			plantService.deletePlantByID(plantID);
		}

		return "true";
	}

	// 下架花草
	@RequestMapping("downPlant.form")
	@ResponseBody
	public String downPlant(Integer plantID) {

		// 如果花草编号不为空
		if (plantID != null) {
			plantService.downPlant(plantID);
		}

		return "true";
	}

	// 上架花草
	@RequestMapping("upPlant.form")
	@ResponseBody
	public String upPlant(Integer plantID) {

		// 如果花草编号不为空
		if (plantID != null) {
			plantService.upPlant(plantID);
		}

		return "true";
	}

}
