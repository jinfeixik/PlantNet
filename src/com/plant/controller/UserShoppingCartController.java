package com.plant.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plant.entity.PlantDetails;
import com.plant.entity.ShoppingCart;
import com.plant.entity.User;
import com.plant.service.PlantDetailsService;
import com.plant.service.ShoppingCartService;

@Controller
public class UserShoppingCartController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpSession session;

	@Autowired
	private ShoppingCartService shoppingCartService;

	@Autowired
	private PlantDetailsService plantDetailsService;

	// 加入购物车
	@RequestMapping("addShoppingCart.form")
	@ResponseBody
	public String addShoppingCart(ModelMap model, ShoppingCart shoppingCart,
			Integer plantStock) {

		// 初始化花草详情实体类
		PlantDetails plantDetails = new PlantDetails();

		// 库存扣除购物车数量
		plantStock = plantStock - shoppingCart.getShoppingCartNumber();

		// 设置库存
		plantDetails.setPlantStock(plantStock);

		// 设置花草详情编号
		plantDetails.setPlantDetailsID(shoppingCart.getPlantDetailsID());

		// 更新库存
		plantDetailsService.updatePlantStock(plantDetails);

		// 查询条件
		ShoppingCart sCart = new ShoppingCart();

		// 花草详情编号
		sCart.setPlantDetailsID(shoppingCart.getPlantDetailsID());

		// 用户编号
		User user = (User) session.getAttribute("user");
		sCart.setUserID(user.getUserID());

		// 当前用户的当前花草详情购物车信息
		List<ShoppingCart> shoppingCartLists = shoppingCartService
				.findShoppingCart(sCart);

		// 如果该花草详情编号已经加入了购物车，则更新，否则新建
		if (shoppingCartLists.size() != 0) {
			// 更新购物车记录
			shoppingCart.setShoppingCartID(shoppingCartLists.get(0)
					.getShoppingCartID());
			shoppingCart.setShoppingCartNumber(shoppingCartLists.get(0)
					.getShoppingCartNumber()
					+ shoppingCart.getShoppingCartNumber());
			shoppingCart.setShoppingCartAmount(shoppingCartLists.get(0)
					.getShoppingCartAmount()
					+ shoppingCart.getShoppingCartAmount());
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String nowDate = dateFormat.format(date);
			shoppingCart.setShoppingCartCreateTime(nowDate);

			shoppingCartService.updateShoppingCart(shoppingCart);

		} else {
			// 添加购物车记录
			shoppingCartService.addShoppingCart(shoppingCart);
		}

		return "true";
	}

	// 移除购物车
	@RequestMapping("deleteShoppingCart.form")
	@ResponseBody
	public String deleteShoppingCart(ModelMap model, ShoppingCart shoppingCart,
			PlantDetails plantDetails) {

		// 删除购物车信息
		shoppingCartService
				.deleteShoppingCart(shoppingCart.getShoppingCartID());

		// 回收库存(更新花草详情)
		plantDetails.setPlantDetailsID(shoppingCart.getPlantDetailsID());
		plantDetailsService.updatePlantStock(plantDetails);
		
		return "true";

	}

	// 改变购物车数量
	@RequestMapping("changeShoppingCartNumber.form")
	@ResponseBody
	public String reduceShoppingCartNumber(ModelMap model, ShoppingCart shoppingCart,
			Integer plantStock) {

		// 更新购物车信息
		shoppingCartService
				.updateShoppingCart(shoppingCart);

		// 修改库存(更新花草详情)
		PlantDetails plantDetails = new PlantDetails();
		plantDetails.setPlantDetailsID(shoppingCart.getPlantDetailsID());
		plantDetails.setPlantStock(plantStock);
		plantDetailsService.updatePlantStock(plantDetails);
		return null;

	}

}
