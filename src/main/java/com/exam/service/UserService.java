package com.exam.service;

import com.exam.dto.UserDTO;

public interface UserService {
	public UserDTO idCheck(String userid);
	public int userAdd(UserDTO dto);
}
