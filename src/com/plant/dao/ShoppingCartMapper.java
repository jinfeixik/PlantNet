package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.ShoppingCart;

@Component
public interface ShoppingCartMapper {

	//加入购物车
	public void addShoppingCart(ShoppingCart shoppingCart);

	//查找购物车
	public List<ShoppingCart> findShoppingCart(ShoppingCart shoppingCart);

	//更新购物车
	public void updateShoppingCart(ShoppingCart shoppingCart);
    
	//删除购物车
	public void deleteShoppingCart(Integer shoppingCartID);

}
