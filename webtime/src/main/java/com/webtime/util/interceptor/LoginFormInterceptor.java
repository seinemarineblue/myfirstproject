package com.webtime.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginFormInterceptor extends HandlerInterceptorAdapter {

	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
		ModelAndView modelAndView) throws Exception {
	
	//로그인 성공시 생성되는 세션 id
	String id = (String)request.getSession().getAttribute("id");
	String uri = (String)request.getSession().getAttribute("uri");
		
	//1.로그인 성공, 기존에 접근하려는 uri가 있는 경우, uri로 이동
	if(uri != null && id != null) {
		response.sendRedirect(uri);
		
	//2.일반적인 로그인 성공인 경우
	} else if(id != null) {
		response.sendRedirect( request.getContextPath() );
	}
	
	//3.로그인 실패인 경우, 기존의 컨트롤러대로 실행됨(해당되는 조건이 없어, 여긴 그냥 슥 지나)		
	System.out.println("포스트핸들 실행됨!~~");
		
	}
	
}
