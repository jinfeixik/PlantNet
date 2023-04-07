package com.plant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Order;
import com.plant.entity.PlantDetails;
import com.plant.service.OrderService;
import com.plant.service.PlantDetailsService;

@Controller
public class AlipayController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private PlantDetailsService plantDetailsService;
	
	@Autowired
	private HttpSession session;
	

	// 跳转到服务器异步通知页面
	@RequestMapping("notify_url.form")
	public String notify_url() {
		
		System.out.println("跳转到服务器异步通知页面");

		return "notify_url";
	}

	// 跳转同步通知页面
	@RequestMapping("return_url.form")
	public String return_url() {
		
		//设置订单状态
		Order order=new Order();
		order.setOrderState("已支付");
		order.setOrderID((Integer)session.getAttribute("orderID"));
		orderService.updateOrder(order);
		
		//初始化花草详情实体
		PlantDetails plantDetails=new PlantDetails();
		
		//查找得到花草详情信息
		if(orderService.findOrder(order).size()!=0){
			//详情编号
			plantDetails.setPlantDetailsID(orderService.findOrder(order).get(0).getPlantDetailsID());
			
			//订单数量
			Integer orderNumber=orderService.findOrder(order).get(0).getOrderNumber();
			
			//在原销量中加上订单数量
			plantDetails.setPlantSales(orderService.findOrder(order).get(0).plantDetails.getPlantSales()+orderNumber);
			
		}
		
		//更新花草详情，增加销量
		plantDetailsService.updatePlantSales(plantDetails);    
		
		//移除订单编号session
		session.removeAttribute("orderID");
		
		return "forward:user-order.form";
	}

	// 跳转主页
	@RequestMapping("alipay_index.form")
	public String alipay_index() {

		return "index";
	}

	// 跳转支付页面（弃用）
	@RequestMapping("alipay.trade.page.pay.form")
	public String alipayTradePagePay(ModelMap model,String WIDout_trade_no,String WIDtotal_amount,String WIDsubject,String WIDbody) {
		
		model.put("WIDout_trade_no",WIDout_trade_no);
		
		model.put("WIDout_trade_no",WIDout_trade_no);
		
		model.put("WIDsubject", WIDsubject);
		
		model.put("WIDbody", WIDbody);
		
		return "alipay.trade.page.pay";
	}

}
