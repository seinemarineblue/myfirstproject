package com.webtime.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rankBoard")
public class rankBoardController {

	@RequestMapping(value="/rankMain")
	public String rankMain() {
		
		return "rankBoard/rankMain";
		
	}
	
	@RequestMapping(value="/rankTotal")
	public String rankTotal() {
		
		return "rankBoard/rankTotal";
		
	}
	
	
}
