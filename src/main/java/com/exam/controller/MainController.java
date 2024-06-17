package com.exam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.exam.service.UserService;

@Controller
public class MainController {
	
	Logger logger = LoggerFactory.getLogger(getClass());

	UserService userService;
	
	public MainController(UserService userService) {
		this.userService = userService;
	}
	
	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
}
