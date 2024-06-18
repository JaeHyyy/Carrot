package com.exam.service;

import java.util.Map;

import com.exam.dto.UserDTO;

public interface UserService {
	public UserDTO idCheck(String userid);
	public int userAdd(UserDTO dto);
	public UserDTO login(Map<String, String> map);
}
