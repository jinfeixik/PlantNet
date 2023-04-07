package com.plant.service;

import java.util.List;

import com.plant.entity.ShoppingCart;

public interface ShoppingCartService {

	//加入购物车
	public void addShoppingCart(ShoppingCart shoppingCart);
    
	//查询购物车
	public List<ShoppingCart> findShoppingCart(ShoppingCart shoppingCart);
	
	//更新购物车
	public void updateShoppingCart(ShoppingCart shoppingCart);

	//删除购物车
	public void deleteShoppingCart(Integer shoppingCartID);

}
