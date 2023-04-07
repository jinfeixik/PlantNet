package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.PlantCollectMapper;
import com.plant.entity.PlantCollect;
import com.plant.entity.User;
import com.plant.service.PlantCollectService;

@Service
public class PlantCollectServiceImpl implements PlantCollectService {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private PlantCollectMapper plantCollectDao;

	@Autowired
	private HttpSession session;

	@Override
	public void addPlantCollect(Integer plantID) {
		// TODO Auto-generated method stub
		//初始化花草收藏类
		PlantCollect plantCollect=new PlantCollect();
		
		// 花草编号
		plantCollect.setPlantID(plantID);

		// 用户编号
		User user = (User) session.getAttribute("user");
		plantCollect.setUserID(user.getUserID());

		// 花草收藏时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);
		plantCollect.setPlantCollectTime(nowDate);

		plantCollectDao.addPlantCollect(plantCollect);

	}

	@Override
	public void deletePlantCollect(Integer plantID) {
		// TODO Auto-generated method stub
		//初始化花草收藏类
		PlantCollect plantCollect=new PlantCollect();
		
		// 花草编号
		plantCollect.setPlantID(plantID);

		// 用户编号
		User user = (User) session.getAttribute("user");
		plantCollect.setUserID(user.getUserID());

		plantCollectDao.deletePlantCollect(plantCollect);

	}

	@Override
	public List<PlantCollect> findPlantCollect(Integer plantID) {
		// TODO Auto-generated method stub
		//初始化花草收藏类
		PlantCollect plantCollect=new PlantCollect();
		
		// 花草编号
		plantCollect.setPlantID(plantID);

		// 用户编号
		User user = (User) session.getAttribute("user");
		plantCollect.setUserID(user.getUserID());

		return plantCollectDao.findPlantCollect(plantCollect);
	}

	@Override
	public PlantCollect findSumCollectByPlantCollectTime(
			PlantCollect plantCollect) {
		// TODO Auto-generated method stub
		return plantCollectDao.findSumCollectByPlantCollectTime(plantCollect);
	}
}
