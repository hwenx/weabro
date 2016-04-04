package com.jechue.spring.core.util;

public class JavaUtil {
	
	//null , empty 확인
	public static boolean IsNullEmpty(String msg){
		if (msg == null) {
			return true;
		} else {
			if (msg.isEmpty() == true) {
				return true;
			} else {
				return false;
			}
		}
	}

}
