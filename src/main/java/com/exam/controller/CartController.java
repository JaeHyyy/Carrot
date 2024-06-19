package com.exam.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.CartDTO;
import com.exam.service.CartService;
import com.exam.service.GoodsService;

@Controller
public class CartController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	CartService cartService;

	public CartController(CartService cartService) {
		this.cartService = cartService;
	}
	
	@GetMapping("/cart")
	public String main(ModelMap m) {
		List<CartDTO> cart = cartService.cartList();
		m.addAttribute("cart", cart);
		
		
		return "cart";
	}
}
	

//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.exam.dto.CartDTO;
//import com.exam.dto.GoodsDTO;
//import com.exam.service.CartService;
//import com.exam.service.GoodsService;
//
//
//
//
//@Controller
//public class CartController {
//	
//	Logger logger = LoggerFactory.getLogger(getClass());
//	
//	CartService cartService;
//	GoodsService goodService;
//
//	public CartController(CartService cartService, GoodsService goodService) {
//		this.cartService = cartService;
//		this.goodService = goodService;
//	}
//	
//	@GetMapping("/cart")
//	public String cartList(ModelMap m) {
//		List<CartDTO> cartList = cartService.cartList();
//		m.addAttribute("cart", cartList);
//		
//		
//		return "cart";
//	}
//	
//}
