package com.exam.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.CartDTO;
import com.exam.service.CartService;

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
	
	 @PostMapping("/delete")
	 public String CartD(@RequestParam("gCode") String gCode) {
	   cartService.cartD(gCode);
	   return "redirect:/cart";  // 삭제 후 카트 페이지로 리다이렉션
	 }
}

