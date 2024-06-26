package com.exam.controller;

import java.security.Principal;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.CartDTO;
import com.exam.dto.UserDTO;
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
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		UserDTO user  = (UserDTO) auth.getPrincipal();
	    String userid = user .getUserid();
	        
	    // Retrieve cart list for the logged in user
	    List<CartDTO> cart = cartService.cartList(userid);
		
//		List<CartDTO> cart = cartService.cartList(userid);
		m.addAttribute("cart", cart);
			
		return "cart";
	}
	
	@PostMapping("/delete")
	public String CartD(@RequestParam("gCode") String gCode) {
		cartService.cartD(gCode);
		return "redirect:/cart";
	}
	
	
	 @PostMapping("/deleteChecked")
	    public String deleteCheckedItems(@RequestParam("deleteItems") String[] deleteItems) {
	        for (String code : deleteItems) {
	        	System.out.println(code);
	            cartService.deleteCartItem(code);
	        }
	        return "redirect:/cart";
	    }
}

