package com.plant.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.plant.dao.PlantDetailsImageMapper;
import com.plant.dao.PlantDetailsMapper;
import com.plant.entity.PlantDetails;
import com.plant.entity.PlantDetailsImage;
import com.plant.service.PlantDetailsService;
import com.plant.util.UpLoadFileUtil;

@Service
public class PlantDetailsServiceImpl implements PlantDetailsService {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private PlantDetailsMapper plantDetailsDao;

	@Autowired
	private PlantDetailsImageMapper plantDetailsImageDao;

	@Override
	public void addPlantDetails(MultipartFile imagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage) {
		// TODO Auto-generated method stub

		// 上传详情图片
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (imagePath.getOriginalFilename() != ""
				&& imagePath.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(imagePath, request);
		}

		// 改变详情图片路径
		plantDetailsImage.setPlantDetailsImagePath("plantResource/"
				+ imagePath.getOriginalFilename());

		// 设置销量等于0
		plantDetails.setPlantSales(0);

		// 插入花草详情信息
		plantDetailsDao.addPlantDetails(plantDetails);

		// 拿到花草详情编号
		if (plantDetails.getPlantDetailsID() != null
				&& plantDetails.getPlantDetailsID().toString() != "") {

			// 设置花草详情图片外键花草详情编号
			plantDetailsImage.setPlantDetailsID(plantDetails
					.getPlantDetailsID());

			// 插入花草详情图片
			plantDetailsImageDao.addPlantDetailsImage(plantDetailsImage);

		}

	}

	@Override
	public List<PlantDetails> findPlantDetails() {
		// TODO Auto-generated method stub
		return plantDetailsDao.findPlantDetails();
	}

	@Override
	public PlantDetails findPlantDetailsByID(Integer plantDetailsID) {
		// TODO Auto-generated method stub
		return plantDetailsDao.findPlantDetailsByID(plantDetailsID);
	}

	@Override
	public void updatePlantDetails(MultipartFile imagePath,
			PlantDetails plantDetails, PlantDetailsImage plantDetailsImage) {
		// TODO Auto-generated method stub
		// 上传详情图片
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (imagePath.getOriginalFilename() != ""
				&& imagePath.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(imagePath, request);
		}

		// 改变详情图片路径
		plantDetailsImage.setPlantDetailsImagePath("plantResource/"
				+ imagePath.getOriginalFilename());

		// 更新花草详情信息
		plantDetailsDao.updatePlantDetails(plantDetails);

		// 更新花草详情图片信息
		plantDetailsImageDao.updatePlantDetailsImage(plantDetailsImage);

	}

	@Override
	public void updatePlantDetailsState(PlantDetails plantDetails) {
		// TODO Auto-generated method stub
		// 更新花草详情信息
		plantDetailsDao.updatePlantDetails(plantDetails);

	}

	@Override
	public List<PlantDetails> findPlantDetailsByPlantDescribe(
			PlantDetails plantDetails) {
		// TODO Auto-generated method stub
		return plantDetailsDao.findPlantDetails(plantDetails);
	}

	@Override
	public void deletePlantDetails(String plantDetailsDeleteStr) {
		// TODO Auto-generated method stub
		// 分割字符串，依次删除详情图片,详情信息
		String[] pStrs = plantDetailsDeleteStr.split(",");
		for (int i = 0; i < pStrs.length; i++) {
			plantDetailsImageDao.deletePlantDetailsImageByID(Integer.parseInt(pStrs[i]));
			plantDetailsDao.deletePlantDetailsByID(Integer.parseInt(pStrs[i]));
		}
	}

	@Override
	public void deletePlantDetailsByID(Integer plantDetailsID) {
		// TODO Auto-generated method stub
		plantDetailsImageDao.deletePlantDetailsImageByID(plantDetailsID);
		plantDetailsDao.deletePlantDetailsByID(plantDetailsID);	
	}

	@Override
	public List<PlantDetails> findPlantDetailsByPlantID(Integer plantID) {
		// TODO Auto-generated method stub
		return plantDetailsDao.findPlantDetailsByPlantID(plantID);
	}

	@Override
	public void updatePlantStock(PlantDetails plantDetails) {
		// TODO Auto-generated method stub
		// 更新花草详情信息
	    plantDetailsDao.updatePlantDetails(plantDetails);
	}

	@Override
	public void updatePlantSales(PlantDetails plantDetails) {
		// TODO Auto-generated method stub
		plantDetailsDao.updatePlantDetails(plantDetails);
		
	}

}
