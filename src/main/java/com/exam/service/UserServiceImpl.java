package com.exam.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.exam.dto.UserDTO;
import com.exam.mapper.UserMapper;


@Service
public class UserServiceImpl implements UserService {
	UserMapper userMapper;

	public UserServiceImpl(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public UserDTO idCheck(String userid) {
		return userMapper.idCheck(userid);
	}
	
	@Autowired
    private PasswordEncoder passwordEncoder;

	@Override
	public int userAdd(UserDTO dto) {
		return userMapper.userAdd(dto);
	}

	@Override
	public UserDTO login(Map<String, String> map) {
		return userMapper.login(map);
	}
	
	public void register(UserDTO user) {
        String encodedPassword = passwordEncoder.encode(user.getPasswd());
        user.setPasswd(encodedPassword);
        // insert user into database (implementation not shown)
    }
}
