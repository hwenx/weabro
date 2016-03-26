package com.jechue.spring.core.models;

//paging 처리 값 받기
public class PageInfoInputData {

	private int currentPage;
	private int offset;
	private int totalRows;
	
	public PageInfoInputData(int currentPage, int offset, int totalRows){
		setCurrentPage(this.currentPage);
		setOffset(this.offset);
		setTotalRows(this.totalRows);
		
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	
}
