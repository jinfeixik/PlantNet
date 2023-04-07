package com.plant.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.AddressMapper;
import com.plant.entity.Address;
import com.plant.entity.User;
import com.plant.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private AddressMapper addressDao;

	@Override
	public void addAddress(Address address) {
		// TODO Auto-generated method stub
		//设置是否默认地址
		address.setIsDefault("否");
		
		// 用户编号
		User user = (User) session.getAttribute("user");
		address.setUserID(user.getUserID());
		
		addressDao.addAddress(address);
		
	    
	}

	@Override
	public List<Address> findAddress(Address address) {
		// TODO Auto-generated method stub
		
		return addressDao.findAddress(address);
	}

	@Override
	public void deleteAddress(Integer addressID) {
		// TODO Auto-generated method stub
		
		addressDao.deleteAddress(addressID);
	}

	@Override
	public void updateAddress(Address address) {
		// TODO Auto-generated method stub
		addressDao.updateAddress(address);
	}
}
