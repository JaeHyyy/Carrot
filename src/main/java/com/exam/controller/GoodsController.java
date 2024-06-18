package com.exam.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.dto.GoodsDTO;
import com.exam.service.GoodsService;

@Controller
public class GoodsController {
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	GoodsService goodsService;

	public GoodsController(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
	
	@GetMapping("/goodsRetrieve")
	public String goodsRetrieve(@RequestParam String gCode, ModelMap m) {
		GoodsDTO dto = goodsService.goodsRetrieve(gCode);
		m.addAttribute("goodsRetrieve", dto);
		return "goodsRetrieve";
	}
}
