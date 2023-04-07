package com.plant.service;

import java.util.List;

import com.plant.entity.Order;

public interface OrderService {

	//添加订单
	public Integer addOrder(Order order);
	
	//更新订单
	public void updateOrder(Order order);	
	
	//查找订单
	public List<Order> findOrder(Order order);
    
	//根据订单日期查找订单数量，订单金额总和
	public Order findSumOrderByOrderCreateTime(Order order);

}
