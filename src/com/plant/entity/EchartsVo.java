package com.plant.entity;

import java.util.List;

//echarts折线图数据源
public class EchartsVo {
	
	//订单相关数据
	public List<Order> orderList;
	
	//收藏相关数据
	public List<PlantCollect> plantCollectList;

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public List<PlantCollect> getPlantCollectList() {
		return plantCollectList;
	}

	public void setPlantCollectList(List<PlantCollect> plantCollectList) {
		this.plantCollectList = plantCollectList;
	}

	@Override
	public String toString() {
		return "EchartsVo [orderList=" + orderList + ", plantCollectList="
				+ plantCollectList + ", getOrderList()=" + getOrderList()
				+ ", getPlantCollectList()=" + getPlantCollectList()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
