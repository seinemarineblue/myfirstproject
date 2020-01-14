package com.webtime.util.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAdvice {

	//이 프로젝트의 모든 서비스에 대해서, target,args,signature의 실행정보를 출력하는 AOP
	
	//로그를 찍을수 있게 처리하는 기능
	//log4j.xml에 선언
	//<loger name="com.webtime.util.aop">
	//	<level value="info" />
	//</logger>
	private static final Logger log_s = LoggerFactory.getLogger(LogAdvice.class);
	
	
	@Around("execution(* com.webtime.*.service.*ServiceImpl.*(..))")
	public Object aroundLog(ProceedingJoinPoint jp) {
		
		log_s.info("적용클래스: " + jp.getTarget() );
		log_s.info("적용메소드: " + jp.getSignature().toString() );
		log_s.info("적용파라미 " + Arrays.toString( jp.getArgs() ) );
		long start = System.currentTimeMillis();
		
		Object result = null;
		
		try {
			result = jp.proceed();//이 메소드를 만나야 서비스의 메소드가 실행
		} catch (Throwable e) {
			e.printStackTrace();
		}
		
		long end = System.currentTimeMillis();
		log_s.info("메소드수행시간: " + (end-start) *0.001 + "초");
		
		return result;
	}
	
}