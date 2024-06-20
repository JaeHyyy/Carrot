package com.exam.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;

public interface CartService {

	public List<CartDTO> cartList(String userid);
	public List<CartDTO> findByUserId(String userid);
	public void cartD(String gCode);
	public void deleteCartItem(@Param("gCode") String gCode);
}
