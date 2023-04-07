package com.plant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Address;
import com.plant.entity.User;
import com.plant.service.AddressService;

@Controller
public class UserAddressController {

	@Autowired
	private AddressService addressService;
	
	@Autowired
	private HttpSession session;

	// 添加收货地址
	@RequestMapping("addAddress.form")
	public String addAddressForm(Address address) {

		addressService.addAddress(address);

		return "forward:/user-address.form";
	}

	// 删除收货地址
	@RequestMapping("deleteAddress.form")
	public String deleteAddressForm(Integer addressID) {

		addressService.deleteAddress(addressID);

		return "forward:/user-address.form";
	}

	// 变更默认地址
	@RequestMapping("changeDefaultAddress.form")
	public String changeDefaultAddressForm(Integer addressID) {

		Address address = new Address();

		// 先把当用户所有地址设置为不默认(否)
		address.setIsDefault("否");
		// 用户编号
		User user = (User) session.getAttribute("user");
		address.setUserID(user.getUserID());
		addressService.updateAddress(address);
		
		//再设置当前地址编号对应的地址为默认(是)
		address.setIsDefault("是");
		address.setAddressID(addressID);
		addressService.updateAddress(address);
		

		return "forward:/user-address.form";
	}

}
