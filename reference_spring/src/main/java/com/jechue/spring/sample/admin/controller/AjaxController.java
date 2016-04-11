package com.jechue.spring.sample.admin.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AjaxController {
	
	@RequestMapping("/main/ajax")
	public String menuPage(){
		System.out.println("ajax : ");
		
		return null;
		
	}

}
