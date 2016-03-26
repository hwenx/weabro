package com.jechue.spring.core.models;

//paging 처리 순서쌍 db 제공
public class LimitPointModel {
	
	private int x;
	private int y;
	
	public LimitPointModel( int $x, int $y){
		x = $x;
		y = $y;
		
	}


	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

}
