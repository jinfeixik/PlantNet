package com.plant.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Order;
import com.plant.service.OrderService;

@Controller
public class AdminOrderController {
	
	@Autowired
	private OrderService orderService;
	
	// 订单列表展示
	@RequestMapping("order-list.form")
	public String orderList(ModelMap model,Order order) throws UnsupportedEncodingException {
		
		//将订单状态进行中文转码
		if(order.getOrderState()!=null&&order.getOrderState()!=""){
			order.setOrderState(new String(order.getOrderState().getBytes("ISO-8859-1"),"UTF-8"));	
		}

		// 查找订单数据并传到页面中
		model.put("orderLists", orderService.findOrder(order));

		return "hui/order-list";
	}
	

}
