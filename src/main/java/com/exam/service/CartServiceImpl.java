package com.exam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.dto.CartDTO;
import com.exam.dto.GoodsDTO;
import com.exam.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {
	
	CartMapper cartMapper;
	
	public CartServiceImpl(CartMapper cartMapper) {
		this.cartMapper = cartMapper;
	}

	@Override
	public List<CartDTO> cartList() {
		return cartMapper.cartList();
	}

	@Override
	public void cartD(String gCode) {
		cartMapper.cartD(gCode);
	}
}
