package com.plant.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Plant;
import com.plant.entity.PlantDetails;
import com.plant.entity.PlantImage;
import com.plant.service.PlantCollectService;
import com.plant.service.PlantDetailsService;
import com.plant.service.PlantService;

@Controller
public class PlantController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@Autowired
	private PlantService plantService;
	
	@Autowired
	private PlantDetailsService plantDetailsService;
	
	@Autowired
	private PlantCollectService plantCollectService;

	// 主页数据展示
	@RequestMapping("index.form")
	public String Index(ModelMap model) {

		// 初始化花草实体
		Plant plant = new Plant();

		// 填充条件，查找已上架的花草
		plant.setPlantState("已上架");

		// 百花齐放/新花怒放数据源List
		List<Plant> indexPlants = new ArrayList<Plant>();

		for (Plant plantItem : plantService.findIndexPlant(plant)) {
			// 取花草介绍的前十二位字符用作展示
			if (plantItem.getPlantInfo().getPlantIntroduce().length() > 12) {
				plantItem.getPlantInfo().setPlantIntroduce(
						plantItem.getPlantInfo().getPlantIntroduce()
								.substring(0, 12)
								+ "...");
			}

			indexPlants.add(plantItem);
		}

		// 填充条件，查找图片季节为春季的花草
		PlantImage plantImage = new PlantImage();
		plantImage.setImageSeason("春季");
		plant.setPlantImage(plantImage);

		// 春暖花开数据源List
		List<Plant> springPlants = new ArrayList<Plant>();

		for (Plant plantItem : plantService.findIndexPlant(plant)) {
			// 取花草介绍的前十二位字符用作展示
			if (plantItem.getPlantInfo().getPlantIntroduce().length() > 12) {
				plantItem.getPlantInfo().setPlantIntroduce(
						plantItem.getPlantInfo().getPlantIntroduce()
								.substring(0, 12)
								+ "...");
			}

			springPlants.add(plantItem);
		}

		// 百花齐放/新花怒放花草数据
		model.put("indexPlantLists", indexPlants);

		// 春暖花开花草数据
		model.put("springPlantLists", springPlants);

		return "forward:/index.jsp";
	}

	// 跳转图库主页
	@RequestMapping("image-index.form")
	public String imageIndex(ModelMap model,PlantImage plantImage)throws UnsupportedEncodingException {
		
		// 初始化花草实体
		Plant plant = new Plant();	
		
		// 填充条件，查找已上架的花草
	    plant.setPlantState("已上架");
	    
	    //填充查询条件（风格，空间，主题，百科）
	    if(plantImage.getImageStyle()!=null&&plantImage.getImageStyle()!=""){
	    	plantImage.setImageStyle(new String(plantImage.getImageStyle().getBytes("ISO-8859-1"),"UTF-8"));
			
		}else if(plantImage.getImageSpace()!=null&&plantImage.getImageSpace()!=""){
			plantImage.setImageSpace(new String(plantImage.getImageSpace().getBytes("ISO-8859-1"),"UTF-8"));
			
		}else if(plantImage.getImageTheme()!=null&&plantImage.getImageTheme()!=""){
		    plantImage.setImageTheme(new String(plantImage.getImageTheme().getBytes("ISO-8859-1"),"UTF-8"));
			
		}else if(plantImage.getImageEncyclopedia()!=null&&plantImage.getImageEncyclopedia()!=""){
			plantImage.setImageEncyclopedia(new String(plantImage.getImageEncyclopedia().getBytes("ISO-8859-1"),"UTF-8"));
		}
	    plant.setPlantImage(plantImage);
		
		//图片列表数据源（按热度）
		List<Plant> plantImages = new ArrayList<Plant>();
		
		for (Plant plantItem : plantService.findPlantOrderByViewTimes(plant)) {

			// 取样式高度随机数用作展示
			Random random = new Random();
			int styleHeight = random.nextInt(100) + 116;

			plantItem.setStyleHeight(styleHeight);

			plantImages.add(plantItem);
		}
		

		model.put("plantImageLists",plantImages);
		
		
		return "image-index";
	}

	// 跳转花草主页
	@RequestMapping("plant-index.form")
	public String plantIndex(ModelMap model, String plantType, String plantName) {

		// 初始化花草实体
		Plant plant = new Plant();

		// 填充条件，查找已上架的花草
		plant.setPlantState("已上架");

		// 最新花草
		model.put("newPlantLists", plantService.findIndexPlant(plant));

		// 最热花草
		model.put("heatPlantLists",
				plantService.findPlantOrderByViewTimes(plant));

		// 填充花草类型条件
		if (plantName != null && plantName != "") {
			try {
				plant.setPlantName(new String(plantName.getBytes("ISO-8859-1"),
						"UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 填充花草类型条件
		if (plantType != null && plantType != "") {
			try {
				plant.setPlantType(new String(plantType.getBytes("ISO-8859-1"),
						"UTF-8"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 收藏量排序数据源List
		List<Plant> colectPlants = new ArrayList<Plant>();

		for (Plant plantItem : plantService.findPlantOrderByCollectNumber(plant)) {

			// 取样式高度随机数用作展示
			Random random = new Random();
			int styleHeight = random.nextInt(30) + 210;

			plantItem.setStyleHeight(styleHeight);

			colectPlants.add(plantItem);
		}

		// 收藏量排序花草
		model.put("colectPlantLists", colectPlants);

		return "plant-index";
	}

	// 跳转花草详情页
	@RequestMapping("plant-detail.form")
	public String plantIndex(ModelMap model, Integer plantID) {

		// 更新花草信息，设置浏览数加一
		Plant plant = new Plant();
		plant.setPlantID(plantID);
		plant.setViewTimes(plantService.findPlantByID(plantID).getViewTimes() + 1);
		plantService.updatePlantSetViewTimes(plant);
		
		//花草是否被收藏标记
		boolean IsPlantCollected=false;
		
		if(session.getAttribute("user")!=null){
			
		//根据用户编号和花草编号查询出收藏信息
		if(plantCollectService.findPlantCollect(plantID).size()!=0){
			IsPlantCollected=true;
		}
		}
		
		//初始化花草详情实体
		PlantDetails plantDetails=new PlantDetails();
		
		//设置详情状态
		plantDetails.setPlantDetailsState("启用");
		
		//设置花草编号
		plantDetails.setPlantID(plantID);
		
		//根据花草编号查询出花草详情并传出（启用）
		model.put("plantDetailsLists",plantDetailsService.findPlantDetailsByPlantDescribe(plantDetails));

		// 通过花草编号查询出花草信息并传出
		model.put("plantList", plantService.findPlantByID(plantID));
		
		//将花草是否被收藏标记传出
		model.put("IsPlantCollected",IsPlantCollected);

		return "plant-detail";
	}

}
