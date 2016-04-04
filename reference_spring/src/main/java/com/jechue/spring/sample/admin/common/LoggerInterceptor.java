package com.jechue.spring.sample.admin.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// 화면에 무언가를 출력할 때 모두 Log4j를 사용하게 함. (DispatcherServlet -> Controller 호출 전,후에 요청, 응답을 가로채서 가공)
public class LoggerInterceptor extends HandlerInterceptorAdapter {
	
	private Log log = LogFactory.getLog(LoggerInterceptor.class);
	
	//client -> controller 요청 메서드, 전처리기 (controller 호출전 실행)
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if (log.isDebugEnabled()) {
			log.debug("=================================          START         =================================================");
			//현재 호출한 URI 무엇인가 확인
			log.debug(" Request URI \t  :  " + request.getRequestURI());
		}
		return super.preHandle(request, response, handler);
	}
	
	//controller -> client 요청 메서드, 후처리기 (controller 호출후 실행)
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception{
		if (log.isDebugEnabled()) {
			log.debug("=================================            END          =================================================");
		}
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		super.afterCompletion(request, response, handler, ex);
		
	}
	
	@Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }
	
	

}
