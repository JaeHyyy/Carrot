package com.exam.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.GoodsDTO;
import com.exam.service.GoodsService;

@Controller
public class GoodsController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	GoodsService goodsService;
//	CartService cartservice;

	public GoodsController(GoodsService goodsService) {
		this.goodsService = goodsService;
//		this.cartservice = cartservice;
	}
	
	@GetMapping("/goodsRetrieve")
	public String goodsRetrieve(@RequestParam String gCode, ModelMap m) {
		GoodsDTO dto = goodsService.goodsRetrieve(gCode);
		m.addAttribute("goodsRetrieve", dto);
		return "goodsRetrieve";
	}
	
	@PostMapping("/goodsRetrieve")
	public String goodsRetrieve(@Valid GoodsDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			return "goodsRetrieve";
		}
		logger.info("logger:goodsRetrieve:{}", dto);
		
		int n = goodsService.goodsZzim(dto);
		return "redirect:main";
	}
	
	
}
