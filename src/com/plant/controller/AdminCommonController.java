package com.plant.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plant.entity.EchartsVo;
import com.plant.entity.Order;
import com.plant.entity.Plant;
import com.plant.entity.PlantCollect;
import com.plant.service.OrderService;
import com.plant.service.PlantCollectService;
import com.plant.service.PlantService;
import com.plant.util.DateUtil;

@Controller
public class AdminCommonController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private PlantCollectService plantCollectService;
	
	@Autowired
	private PlantService plantService;

	// 跳转到欢迎页
	@RequestMapping("welcome.form")
	public String Welcome() {

		return "hui/welcome";
	}

	// 跳转测试页
	@RequestMapping("test-add.form")
	public String test() {

		return "hui/test-add";
	}

	// 跳转
	@RequestMapping("upload_photo.form")
	@ResponseBody
	public String upload_phone() {

		return "plantResource/55e7253348f8f_200_200.jpg";
	}

	// 近七天花草交易额与收藏量分析
	@RequestMapping("charts-1.form")
	public String charts1() {

		return "hui/charts-1";
	}

	// 查询七天订单量和订单金额
	@RequestMapping("searchOrderByDate.form")
	@ResponseBody
	public EchartsVo searchOrderByDate() {

		// 获取近七天的日期
		DateUtil dateUtil = new DateUtil();

		// 订单数据源
		List<Order> orderList = new ArrayList<Order>();

		// 收藏数据源
		List<PlantCollect> plantCollectList = new ArrayList<PlantCollect>();

		// 循环
		for (String createTime : dateUtil.getDaysBetwwen(6)) {
			Order order = new Order();
			order.setOrderCreateTime(createTime);

			// 查询出每天的订单数量和订单金额
			Order newOrder = orderService.findSumOrderByOrderCreateTime(order);

			// 判断值是否存在
			if (newOrder.getOrderCount() == null) {
				newOrder.setOrderCount(0);
			}
			if (newOrder.getSumOrderAmount() == null) {
				newOrder.setSumOrderAmount(0.00);
			}
			orderList.add(newOrder);

			PlantCollect plantCollect = new PlantCollect();
			plantCollect.setPlantCollectTime(createTime);

			// 查询出每天的收藏数量
			PlantCollect newPlantCollect = plantCollectService
					.findSumCollectByPlantCollectTime(plantCollect);

			// 判空
			if (newPlantCollect.getSumCollectNumber() == null) {
				newPlantCollect.setSumCollectNumber(0);
			}

			plantCollectList.add(newPlantCollect);

		}

		// 初始化数据类并存入订单和收藏的数据
		EchartsVo echartsVo = new EchartsVo();

		echartsVo.setOrderList(orderList);

		echartsVo.setPlantCollectList(plantCollectList);

		return echartsVo;
	}

	// 跳转花草浏览量Top5页面
	@RequestMapping("charts-2.form")
	public String charts2() {

		return "hui/charts-2";
	}

	// 花草浏览量Top5
	@RequestMapping("findPlantOrderByViewTimes.form")
	@ResponseBody
	public List<Plant> findPlantOrderByViewTimes() {

		
		return plantService.findPlantOrderByViewTimes(null);


	}
}
