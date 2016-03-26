package com.jechue.spring.sample.admin.models;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ListModel {
	
	@JsonProperty("no")
	private int idx;
	
	@JsonProperty("id")
	private String Id;
	
	@JsonProperty("name")
	private String Name;
	
	@JsonProperty("regdate")
	private String regDate;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

}
