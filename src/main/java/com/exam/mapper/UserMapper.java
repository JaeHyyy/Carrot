package com.exam.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.UserDTO;

@Mapper
public interface UserMapper {
	public UserDTO idCheck(String userid);
	public int userAdd(UserDTO dto);
	public UserDTO login(Map<String, String> map);
}
