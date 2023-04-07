package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.AddressMapper;
import com.plant.dao.OrderMapper;
import com.plant.entity.Address;
import com.plant.entity.Order;
import com.plant.entity.User;
import com.plant.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private HttpSession session;

	@Autowired
	private AddressMapper addressDao;
	
	@Autowired
	private OrderMapper orderDao;
	

	@Override
	public Integer addOrder(Order order) {
		// TODO Auto-generated method stub
		// 用户编号
		User user = (User) session.getAttribute("user");
		order.setUserID(user.getUserID());
		
		//提交时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);
		order.setOrderCreateTime(nowDate);
		
		//该用户的默认地址
	    Address address=new Address();
	    address.setIsDefault("是");
	    address.setUserID(user.getUserID());
	    
	    //如果默认地址存在才加入地址编号,否则设为零
	    if(addressDao.findAddress(address).size()>0){
	    order.setAddressID(addressDao.findAddress(address).get(0).getAddressID());
	    }else{
	    order.setAddressID(0);	
	    }
	    
	    //订单状态
	    order.setOrderState("待支付");
        
	    //添加订单
	    orderDao.addOrder(order);
	    
	    //返回订单编号
	    return order.getOrderID();

	}


	@Override
	public void updateOrder(Order order) {
		// TODO Auto-generated method stub
		orderDao.updateOrder(order);
	}


	@Override
	public List<Order> findOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDao.findOrder(order);
	}


	@Override
	public Order findSumOrderByOrderCreateTime(Order order) {
		// TODO Auto-generated method stub
		return orderDao.findSumOrderByOrderCreateTime(order);
		
	}

}
