package com.exam.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.exam.dto.UserDTO;
import com.exam.service.UserService;

@Controller
@SessionAttributes(names = {"login"})
public class LoginController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	UserService userService;
	
	
	
	public LoginController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/login")
	public String main() {
			
		return "loginForm";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam Map<String, String> m, ModelMap model) {
			
		UserDTO dto = userService.login(m);
		
		if(dto!=null) {
			//세션에 저장 
			model.addAttribute("login", dto); //세션 스코프 
			return "redirect:main";
		}
		model.addAttribute("errorMessage", "아이디 및 비번 확인 필요."); //리퀘스트 스코프
		return "loginForm";
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		status.setComplete();  // 세션 삭제? 
		return "redirect:main";
	}
}
