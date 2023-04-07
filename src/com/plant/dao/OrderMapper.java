package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.Order;

@Component
public interface OrderMapper {

	//添加订单
	public void addOrder(Order order);
    
	//更新订单
	public void updateOrder(Order order);
	
	//查找订单
	public List<Order> findOrder(Order order);

	//根据订单日期查找订单量，订单金额总和
	public Order findSumOrderByOrderCreateTime(Order order);

}
