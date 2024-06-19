package com.exam.controller;

import java.io.File;
import java.io.IOException;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	
	@GetMapping("/goodsAdd")
	public  String goodsAddForm(ModelMap m) {
		GoodsDTO dto = new GoodsDTO();
		m.addAttribute("goodsDTO", dto);
		return "goodsAddForm";
	}
	
	@PostMapping("/goodsAdd")
	public String goodsAdd(@Valid GoodsDTO dto, BindingResult result) {
		if(result.hasErrors()) {
			return "userForm";
		}
		logger.info("logger:signup:{}", dto);
		MultipartFile image = dto.getImage();
		//String fileName = image.getOriginalFilename();
		//int startIdx = "aaa.png"
		dto.setgImage(image.getOriginalFilename());
	
		//저장 디레고리
		File f = new File("C://upload", image.getOriginalFilename());

		try {
			image.transferTo(f);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		int n = goodsService.goodsAdd(dto);
		return "redirect:main";
	}
	
}
