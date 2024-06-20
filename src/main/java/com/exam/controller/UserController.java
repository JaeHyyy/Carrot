package com.exam.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.exam.dto.UserDTO;
import com.exam.service.UserService;

@Controller
public class UserController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	UserService userService;
	
	public UserController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/idCheck")
	public @ResponseBody String idCheck(@RequestParam String userid) {
		logger.info("idcheck");
		UserDTO dto = userService.idCheck(userid);
		String mesg = "사용가능";
		if(dto!=null) {
			mesg = "사용불가";
		}
		return mesg;
	}
	
	//get은 조회
	@GetMapping("/signup")
	public  String signupForm(ModelMap m) {
		UserDTO dto = new UserDTO();
		m.addAttribute("userDTO", dto);
		return "userForm";
	}
	
	//post는 수정, 저장
	@PostMapping("/signup")
	public String signup(@Valid UserDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			return "userForm";
		}
		String encptPw = 
				new BCryptPasswordEncoder().encode(dto.getPasswd());
		dto.setPasswd(encptPw);
		int n = userService.userAdd(dto);
		return "redirect:main";
	}
	
//	@GetMapping("/mypage")
//	public String mypage(ModelMap m) {
//		
//		// 세션에 저장된 MemberDTO 얻기
//		MemberDTO dto = (MemberDTO)m.getAttribute("login");
//		logger.info("logger:myapage:{}", dto);
//		String userid = dto.getUserid();
//		
//		MemberDTO searchDTO = memberService.mypage(userid);
//		m.addAttribute("login", searchDTO);
//		
//		return "mypage";
//	}
	
}
