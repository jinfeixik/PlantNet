package com.plant.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Email_Authenticator extends Authenticator{
	
	String userName=null;
	String passWord=null;
	
	public Email_Authenticator(){
		
	}
	
	public Email_Authenticator(String username,String password){
		this.userName=username;
		this.passWord=password;
	}
	
	public PasswordAuthentication  getPasswordAuthentication(){
		return new PasswordAuthentication(userName,passWord);
	}

}
