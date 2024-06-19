package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;

@Mapper
public interface CartMapper {

	public List<CartDTO> cartList();
	public void cartD(String gCode);
	
}
