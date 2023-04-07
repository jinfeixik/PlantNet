package com.plant.service;

import java.util.List;

import com.plant.entity.Address;

public interface AddressService {
    
	//添加收货地址
	public void addAddress(Address address);
    
	//查找收货地址
	public List<Address> findAddress(Address address);
    
	//删除收货地址
	public void deleteAddress(Integer addressID);

	//更新收货地址
	public void updateAddress(Address address);

}
