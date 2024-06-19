package com.exam.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.exam.dto.CartDTO;

@Mapper
public interface CartMapper {

	public List<CartDTO> cartList();
	public void cartD(String gCode);
	public void deleteCartItem(@Param("gCode") String gCode);
	
}
