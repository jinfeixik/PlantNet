package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.ShoppingCartMapper;
import com.plant.entity.ShoppingCart;
import com.plant.entity.User;
import com.plant.service.ShoppingCartService;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ShoppingCartMapper shoppingCartDao;

	@Override
	public void addShoppingCart(ShoppingCart shoppingCart) {
		// TODO Auto-generated method stub

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 设置加入时间等于当前时间
		shoppingCart.setShoppingCartCreateTime(nowDate);

		// 用户编号
		User user = (User) session.getAttribute("user");
		shoppingCart.setUserID(user.getUserID());
		
		shoppingCartDao.addShoppingCart(shoppingCart);

	}

	@Override
	public List<ShoppingCart> findShoppingCart(ShoppingCart shoppingCart) {
		// TODO Auto-generated method stub
		return shoppingCartDao.findShoppingCart(shoppingCart);	
	}

	@Override
	public void updateShoppingCart(ShoppingCart shoppingCart) {
		// TODO Auto-generated method stub
		shoppingCartDao.updateShoppingCart(shoppingCart);	
	}

	@Override
	public void deleteShoppingCart(Integer shoppingCartID) {
		// TODO Auto-generated method stub
		shoppingCartDao.deleteShoppingCart(shoppingCartID);
	}

}
