package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.plant.dao.PlantImageMapper;
import com.plant.dao.PlantInfoMapper;
import com.plant.dao.PlantMapper;
import com.plant.entity.Plant;
import com.plant.entity.PlantImage;
import com.plant.entity.PlantInfo;
import com.plant.service.PlantDetailsService;
import com.plant.service.PlantService;
import com.plant.util.UpLoadFileUtil;

@Service
public class PlantServiceImpl implements PlantService {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private PlantMapper plantDao;

	@Autowired
	private PlantImageMapper plantImageDao;

	@Autowired
	private PlantInfoMapper plantInfoDao;
	
	@Autowired
	private PlantDetailsService plantDetailsService;

	@Override
	public String addPlant(MultipartFile imageFile, Plant plant,
			PlantInfo plantInfo, PlantImage plantImage) {
		// TODO Auto-generated method stub

		// 上传花草图片
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (imageFile.getOriginalFilename() != "" && imageFile.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(imageFile, request);
		}

		// 改变图片路径
		plantImage.setPlantImagePath("plantResource/"
				+ imageFile.getOriginalFilename());

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 设置上架时间等于当前时间
		plant.setPlantCreateTime(nowDate);

		// 设置花草状态等于已上架
		plant.setPlantState("已上架");

		// 设置浏览次数等于0
		plant.setViewTimes(0);

		// 设置花草获赞等于0
		plant.setPlantLikesNumber(0);

		// 设置花草收藏等于0
		plant.setPlantCollectNumber(0);

		// 插入花草信息
		plantDao.addPlant(plant);

		if (plant.getPlantID() != null && plant.getPlantID().toString() != "") {

			// 设置花草简介外键花草编号
			plantInfo.setPlantID(plant.getPlantID());

			// 设置花草图片外键花草编号
			plantImage.setPlantID(plant.getPlantID());

			// 插入花草简介
			plantInfoDao.addPlantInfo(plantInfo);

			// 插入花草图片
			plantImageDao.addPlantImage(plantImage);

		}
		return "true";

	}

	@Override
	public List<Plant> findPlant() {
		// TODO Auto-generated method stub
		return plantDao.findPlant();
	}

	@Override
	public void deletePlant(String plantDeleteStr) {
		// TODO Auto-generated method stub
		// 分割字符串，依次删除图片，简介和信息
		String[] pStrs = plantDeleteStr.split(",");
		for (int i = 0; i < pStrs.length; i++) {			
			plantImageDao.deletePlantImageByID(Integer.parseInt(pStrs[i]));
			plantInfoDao.deletePlantInfoByID(Integer.parseInt(pStrs[i]));
			plantDao.deletePlantByID(Integer.parseInt(pStrs[i]));
		}

	}

	@Override
	public void deletePlantByID(Integer plantID) {
		// TODO Auto-generated method stub
		// 依次删除图片，简介和信息
		plantImageDao.deletePlantImageByID(plantID);
		plantInfoDao.deletePlantInfoByID(plantID);
		plantDao.deletePlantByID(plantID);

	}

	@Override
	public void upPlant(Integer plantID) {
		// TODO Auto-generated method stub
		Plant plant = new Plant();
		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 设置上架时间等于当前时间
		plant.setPlantCreateTime(nowDate);
		// 设置花草状态等于已上架
		plant.setPlantState("已上架");
		plant.setPlantID(plantID);
		plantDao.updatePlantState(plant);
	}

	@Override
	public void downPlant(Integer plantID) {
		// TODO Auto-generated method stub
		Plant plant = new Plant();
		// 设置花草状态等于已上架
		plant.setPlantState("已下架");
		plant.setPlantID(plantID);
		plantDao.updatePlantState(plant);
	}

	@Override
	public Plant findPlantByID(Integer plantID) {
		// TODO Auto-generated method stub
		return plantDao.findPlantByID(plantID);
	}

	@Override
	public void updatePlant(MultipartFile imageFile, Plant plant,
			PlantInfo plantInfo, PlantImage plantImage) {
		// TODO Auto-generated method stub
		// 上传花草图片
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (imageFile.getOriginalFilename() != "" && imageFile.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(imageFile, request);
		}

		// 改变图片路径
		plantImage.setPlantImagePath("plantResource/"
				+ imageFile.getOriginalFilename());

		// 更新花草图片信息
		plantImageDao.updatePlantImage(plantImage);

		// 更新花草简介信息
		plantInfoDao.updatePlantInfo(plantInfo);

		// 更新花草信息
		plantDao.updatePlant(plant);

	}

	@Override
	public List<Plant> searchPlant(Plant plant) {
		// TODO Auto-generated method stub
		return plantDao.findPlant(plant);
	}

	@Override
	public List<Plant> findIndexPlant(Plant plant) {
		// TODO Auto-generated method stub
		return plantDao.findIndexPlant(plant);
	}

	@Override
	public List<Plant> findPlantOrderByViewTimes(Plant plant) {
		// TODO Auto-generated method stub
		return plantDao.findPlantOrderByViewTimes(plant);
	}

	@Override
	public List<Plant> findPlantOrderByCollectNumber(Plant plant) {
		// TODO Auto-generated method stub
		return plantDao.findPlantOrderByCollectNumber(plant);
	}

	@Override
	public void updatePlantSetViewTimes(Plant plant) {
		// TODO Auto-generated method stub
		plantDao.updatePlant(plant);
	}

	@Override
	public void updatePlantSetPlantCollectNumber(Plant plant) {
		// TODO Auto-generated method stub
		plantDao.updatePlant(plant);
	}

}
