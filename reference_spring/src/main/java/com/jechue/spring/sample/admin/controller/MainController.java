package com.jechue.spring.sample.admin.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jechue.spring.core.models.Response;
import com.jechue.spring.sample.admin.service.IMainService;

@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());
	
	
	@Autowired
	private IMainService mainService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView home(ModelAndView mav, HttpServletRequest req){
		mav.setViewName("redirect:/main/home");
			
		return mav;
	}
	
	@RequestMapping(value="/main/{viewname}", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView main(@PathVariable("viewname") String view, ModelAndView mav, HttpServletRequest req){
		System.out.println("main");
		System.out.println("view : " + view);
		HttpSession session = req.getSession();
		mav.setViewName("home");	
		
		Boolean check = (Boolean) session.getAttribute("isSession");
		if(check != null && check) mav.addObject("isLoginYn", "Y");

		if("home".equals(view)){
			mav.addObject("bodyContents", "body.jsp");
			
		}else{
			mav.addObject("bodyContents", view+".jsp");
			
		}
			
		return mav;
	}
	
	@RequestMapping(value="/main/login", method=RequestMethod.POST)
	public ModelAndView login(ModelAndView mav, HttpServletRequest req, HttpServletResponse res){
		HttpSession session = req.getSession();
		Enumeration params = req.getParameterNames();
		
		while(params.hasMoreElements()){
			String names = (String)params.nextElement();
			session.setAttribute(names, req.getParameter(names));
		}
		session.setAttribute("lv", "1");
		session.setAttribute("isSession", true);
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	@RequestMapping(value="/main/logout", method=RequestMethod.GET)
	public ModelAndView logout(ModelAndView mav, HttpServletRequest req, HttpServletResponse res){
		HttpSession session = req.getSession();
		session.invalidate();
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	@RequestMapping(value="/main/joinpage/joinprocess", method=RequestMethod.POST)
	public ModelAndView joinProcess(ModelAndView mav, HttpServletRequest req, HttpServletResponse res){
		System.out.println("joinProcess");
		HttpSession session = req.getSession();
		session.invalidate();
		
		mav.setViewName("redirect:/");
		
		return mav;
	}

	
	@RequestMapping(value="/user/userdetail/{id}", method =  RequestMethod.GET)
	public @ResponseBody Response getUser(@PathVariable String id){
		
		Response result = new Response();
		result.data = mainService.getUser(id);
		
		if(result.data != null){
			result.setStat("ok");
		} else {
			result.setStat("fail");
		}
		
		return result;
	}
	


	

}
