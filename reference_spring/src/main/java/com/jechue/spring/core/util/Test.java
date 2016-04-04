package com.jechue.spring.core.util;

public class Test {

	public static void main(String arg[]){
		long start = System.currentTimeMillis();
		System.out.println(" 시작시간 : " + start);
		
		int i = 0;
		
		for(i = 1 ; i <=1000000000 ; i++){
			
		}
		
		long end = System.currentTimeMillis();
		System.out.println(" 종료시간 : "+ end);
		System.out.println( "실행 시간 : " + (end - start));

		
	}
	
}
