package com.plant.util;

public class IsAllNumberWordUtil {
	//判断一个字符串中是否全是数字字母
		public boolean IsContainSpace(String Str){
		//先拆分成字符数组
		char[] charStr = Str.toCharArray();
		for (int i = 0; i < Str.length(); i++) {
			if (charStr[i] == ' ') {
	        return true;
			}
		}
		
		return false;
		}
}
