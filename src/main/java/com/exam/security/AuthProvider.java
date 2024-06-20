package com.exam.security;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.exam.dto.UserDTO;
import com.exam.service.UserService;

@Component
public class AuthProvider implements AuthenticationProvider {

	@Autowired
	UserService userService;
	
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

		String userid = (String)authentication.getPrincipal(); // name="userid" 값
		String passwd = (String)authentication.getCredentials(); // name="passwd" 값
		
		
		UserDTO mem = userService.idCheck(userid);
		//String encrptPw = mem.getPasswd();  // NullPointerExcepion 발생되기 때문에 사용안됨.
		
		//Authentication 하위클래스
		//로그인 성공시
		if(mem!=null && new BCryptPasswordEncoder().matches(passwd, mem.getPasswd())) {
			
			return new UsernamePasswordAuthenticationToken(mem, null, new ArrayList<>());
		}
		//로그인 실패시
		throw new BadCredentialsException("비밀번호가 일치하지 않습니다. 다시 확인하세요.");
		
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}

}




