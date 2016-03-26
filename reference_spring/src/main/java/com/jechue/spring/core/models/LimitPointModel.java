package com.jechue.spring.core.models;

//paging 泥섎━ �닚�꽌�뙇 db �젣怨�
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
