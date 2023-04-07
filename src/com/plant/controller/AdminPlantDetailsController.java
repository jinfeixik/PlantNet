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

import com.plant.entity.PlantDetails;
import com.plant.entity.PlantDetailsImage;
import com.plant.service.PlantDetailsService;
import com.plant.service.PlantService;

@Controller
public class AdminPlantDetailsController {
	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@Autowired
	private PlantService plantService;

	@Autowired
	private PlantDetailsService plantDetailsService;

	// 进入花草详情添加页
	@RequestMapping("plantDetails-add.form")
	public String plantDetailsAdd(ModelMap model, Integer plantID) {

		// 查找到花草名并传到页面
		model.put("plantName", plantService.findPlantByID(plantID)
				.getPlantName());

		// 花草编号传到页面
		model.put("plantID", plantID);

		return "hui/plantDetails-add";
	}

	// 添加花草详情
	@RequestMapping("addPlantDetails.form")
	@ResponseBody
	public String addPlantDetails(
			@RequestParam("ImagePath") MultipartFile ImagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage) {

		// 添加详情信息和图片
		plantDetailsService.addPlantDetails(ImagePath, plantDetails,
				plantDetailsImage);

		return "true";
	}

	// 花草详情编辑(数据回显)
	@RequestMapping("plantDetails-edit.form")
	public String plantDetailsEdit(Integer plantDetailsID, ModelMap model) {

		PlantDetails plantDetails = plantDetailsService
				.findPlantDetailsByID(plantDetailsID);

		// 查找花草总数据并传到页面中
		model.put("plantDetail", plantDetails);

		// 查找到花草名并传到页面
		model.put("plantName", plantDetails.plant.getPlantName());

		// 花草编号传到页面
		model.put("plantID", plantDetails.plant.getPlantID());

		return "hui/plantDetails-add";
	}

	// 编辑花草详情(提交)
	@RequestMapping("updatePlantDetails.form")
	@ResponseBody
	public String updateplantDetails(
			@RequestParam("ImagePath") MultipartFile ImagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage) {

		// 更新详情信息和图片
		plantDetailsService.updatePlantDetails(ImagePath, plantDetails,
				plantDetailsImage);

		return "true";
	}

	// 更新花草详情状态
	@RequestMapping("updatePlantDetailsState.form")
	@ResponseBody
	public String updatePlantDetailsState(PlantDetails plantDetails) {

		// 更新详情信息和图片
		plantDetailsService.updatePlantDetailsState(plantDetails);

		return "true";
	}

	// 花草详情列表页
	@RequestMapping("plantDetails-list.form")
	public String plantDetailsList(ModelMap model,Integer plantID) {

	    if(plantID!=null){
	    	//根据花草编号查询出花草详情
	    	model.put("plantDetailsLists",
					plantDetailsService.findPlantDetailsByPlantID(plantID));
	    }else{
		    // 查找出所有花草详情
			model.put("plantDetailsLists",
					plantDetailsService.findPlantDetails());
	    }

		return "hui/plantDetails-list";
	}

	// 搜索花草详情
	@RequestMapping("searchPlantDetails.form")
	public String searchPlantDetails(ModelMap model, PlantDetails plantDetails) {

		// 查找出所有花草详情
		model.put("plantDetailsLists", plantDetailsService
				.findPlantDetailsByPlantDescribe(plantDetails));

		return "hui/plantDetails-list";
	}

	// 多选删除花草详情
	@RequestMapping("deletePlantDetails.form")
	@ResponseBody
	public String deletePlantDetails(String plantDetailsDeleteStr) {

		// 如果多选字符串不为空
		if (plantDetailsDeleteStr != "") {
			plantDetailsService.deletePlantDetails(plantDetailsDeleteStr);
		}

		return "true";
	}

	// 单选删除花草详情
	@RequestMapping("deletePlantDetailsByID.form")
	@ResponseBody
	public String deletePlantDetailsByID(Integer plantDetailsID) {

		// 如果详情编号不为空
		if (plantDetailsID != null) {
			plantDetailsService.deletePlantDetailsByID(plantDetailsID);
		}

		return "true";
	}

}
