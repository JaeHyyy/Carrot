package com.exam.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.exam.dto.GoodsDTO;
import com.exam.dto.UploadDTO;
import com.exam.service.GoodsService;

@Controller
public class SearchController {
    
    Logger logger = LoggerFactory.getLogger(getClass());
    
    GoodsService goodsService;

    public SearchController(GoodsService goodsService) {
        this.goodsService = goodsService;
    }
    
    @GetMapping("/search")
    public String searchGoods(ModelMap model) {
		List<GoodsDTO> dto = goodsService.goodsList();
		model.addAttribute("searchGoods", dto);
	    return "searchGoodsForm";
    }
    
    @PostMapping("/search")
	public String search(@RequestParam(name = "gName", required = false) String gName, ModelMap model) {
		List<GoodsDTO> searchResults;
	    if (gName == null || gName.isEmpty()) {
	        searchResults = goodsService.goodsList();
	    } else {
	        searchResults = goodsService.searchGoods(gName);
	    }
	    model.addAttribute("searchGoods", searchResults);
		return "searchGoodsForm";
	}
}
