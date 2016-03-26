package com.jechue.spring.core.util;

import java.util.ArrayList;
import java.util.List;

import com.jechue.spring.core.models.LimitPointModel;
import com.jechue.spring.core.models.PageInfoInputData;

//paging 관리
public class PageInfo {
	private List<LimitPointModel> pointInfoList;
	
	private int currentPage;
	
	private int previousPage;
	
	private int nextPage;
	
	private int offset;
	
	private int totalPage;
	
	private int totalRows;
	
	
	public PageInfo(PageInfoInputData inputData){
		setCurrentPage(inputData.getCurrentPage());
		setOffset(inputData.getOffset());
		totalRows = inputData.getTotalRows();
		
		setTotalPage(((totalRows - 1) / getOffset()) + 1);
		initializePageSetting();
	}

	/**
	 * 
	 * - 페이지 간격을 구성합니다.

	 */
	private void initializePageSetting() {
		previousPage = getCurrentPage() - 1;
		if(previousPage < 1){
			previousPage = 1;
		}
		
		nextPage = getCurrentPage() + 1;
		if(nextPage > getTotalPage()){
			nextPage = getTotalPage();
		}
		
		initializeLimitPointInfo();
	}

	private void initializeLimitPointInfo(){
		int domain = 0;
		pointInfoList = new ArrayList<LimitPointModel>();
		
		for(int i=0; i<getTotalPage(); ++i){
			pointInfoList.add(new LimitPointModel(domain, getOffset()));
			domain += getOffset();
		}
	}
	
	public LimitPointModel getOrderedPair(int currentPage){
		return pointInfoList.get(currentPage - 1);
	}
	
	public LimitPointModel getOrderedPair(){
		return pointInfoList.get(currentPage - 1);
	}
	
	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getCurrentPage() {
		if(currentPage >= totalPage) currentPage = totalPage;
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

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	
}
