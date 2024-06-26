package com.exam.service;

import java.util.List;
import java.util.Map;

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
	public List<CartDTO> cartList(String userid) {
		return cartMapper.cartList(userid);
	}

	@Override
	public void cartD(String gCode) {
		cartMapper.cartD(gCode);
	}

	@Override
	public void deleteCartItem(String gCode) {
		cartMapper.deleteCartItem(gCode);
	}

	@Override
	public List<CartDTO> findByUserId(String userid) {
		return cartMapper.findByUserId(userid);
	}
}
