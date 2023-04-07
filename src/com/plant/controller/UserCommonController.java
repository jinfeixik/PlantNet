package com.plant.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Address;
import com.plant.entity.Order;
import com.plant.entity.ShoppingCart;
import com.plant.entity.User;
import com.plant.service.AddressService;
import com.plant.service.OrderService;
import com.plant.service.PlantCollectService;
import com.plant.service.ShoppingCartService;

@Controller
public class UserCommonController {

	@Autowired
	private PlantCollectService plantCollectService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private ShoppingCartService shoppingCartService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private HttpSession session;

	// 用户基本信息界面
	@RequestMapping("user-index.form")
	public String userIndex() {
		return "user-index";
	}

	// 用户密码修改界面
	@RequestMapping("user-password.form")
	public String userPassword() {
		return "user-password";
	}

	// 用户收货地址界面
	@RequestMapping("user-address.form")
	public String userAddress(ModelMap model) {
		// 查询该用户所有收货地址并传出
		Address address = new Address();

		// 用户编号
		User user = (User) session.getAttribute("user");
		address.setUserID(user.getUserID());

		model.put("addressLists", addressService.findAddress(address));

		return "user-address";
	}

	// 用户我的收藏界面
	@RequestMapping("user-collect.form")
	public String userCollect(ModelMap model) {

		// 查找该用户的所有收藏并传出
		model.put("plantCollectLists",
				plantCollectService.findPlantCollect(null));

		return "user-collect";
	}

	// 用户购物车界面
	@RequestMapping("user-shoppingCart.form")
	public String userShoppingCart(ModelMap model) {

		ShoppingCart shoppingCart = new ShoppingCart();

		// 用户编号
		User user = (User) session.getAttribute("user");
		shoppingCart.setUserID(user.getUserID());

		// 查找该用户的所有收藏并传出
		model.put("shoppingCartLists",
				shoppingCartService.findShoppingCart(shoppingCart));

		return "user-shoppingCart";
	}

	// 用户我的订单界面
	@RequestMapping("user-order.form")
	public String userOrder(ModelMap model) {

		Order order = new Order();

		// 用户编号
		User user = (User) session.getAttribute("user");
		order.setUserID(user.getUserID());

		// 订单信息数据源
		List<Order> orderList = new ArrayList<Order>();

		// 遍历订单链表，依次存入地址信息
		for (Order newOrder : orderService.findOrder(order)) {

			Address newAddress = new Address();

			// 根据地址编号查地址
			newAddress.setAddressID(newOrder.getAddressID());

			// 如果查到了值
			if (addressService.findAddress(newAddress).size() > 0) {
				
				//新建一个地址实体用来存地址信息
				Address address=new Address();

				// 存入联系人
				address.setRecipient(addressService.findAddress(newAddress).get(0).getRecipient());

				// 存入联系电话
				address.setAddressPhone(addressService.findAddress(newAddress).get(0).getAddressPhone());

				// 存入省
				address.setProvince(addressService.findAddress(newAddress).get(0).getProvince());

				// 存入市
				address.setCity(addressService.findAddress(newAddress).get(0).getCity());

				// 存入县
				address.setCounty(addressService.findAddress(newAddress).get(0).getCounty());

				// 存入详细地址
				address.setAddressInfo(addressService.findAddress(newAddress).get(0).getAddressInfo());
				
				//将地址实体并入订单实体
				newOrder.setAddress(address);

			}
			
			// 存入链表中
			orderList.add(newOrder);

		}

		// 将该用户的所有订单信息传出
		model.put("orderLists", orderList);

		return "user-order";
	}

}
