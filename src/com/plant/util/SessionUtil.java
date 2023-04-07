package com.plant.util;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

public class SessionUtil implements SessionAware {

	public Map<String,Object> session;

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;

	}

}
