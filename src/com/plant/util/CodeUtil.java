package com.plant.util;

import java.util.Random;
import java.util.UUID;

public class CodeUtil {
    //生成唯一的激活码
    public String generateUniqueCode(){   	
    	
        return UUID.randomUUID().toString().replaceAll("-", "");
    
    }
    
    //生成验证码，n表示位数
    public String getVerificationCode(int n) {
		String str = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		Random random = new Random();
		String rStr = "";
		for (int i = 0; i < n; i++) {
			rStr += str.charAt(random.nextInt(str.length()));
		}
		return rStr;
	}
}
