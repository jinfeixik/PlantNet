package com.plant.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plant.entity.Order;
import com.plant.service.OrderService;

@Controller
public class UserOrderController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@Autowired
	private OrderService orderService;

	// 添加一条订单
	@RequestMapping("addOrder.form")
	@ResponseBody
	public String addOrder(Order order) {

		// 执行添加
		Integer orderID = orderService.addOrder(order);

		// 将订单编号存到session中
		session.setAttribute("orderID", orderID);

		return "true";

	}

	// 重新提交订单
	@RequestMapping("reSubmitOrder.form")
	@ResponseBody
	public String reSubmitOrder(Integer orderID) {

		// 将订单编号存到session中
		session.setAttribute("orderID", orderID);

		return "true";

	}

	// 更新订单
	@RequestMapping("updateOrder.form")
	@ResponseBody
	public String updateOrder(Order order) {

		//执行更新
		orderService.updateOrder(order);

		return "true";

	}

}
