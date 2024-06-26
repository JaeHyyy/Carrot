package com.exam.service;

import java.util.List;

import com.exam.dto.GoodsDTO;

public interface GoodsService {

	public List<GoodsDTO> goodsList();
	public GoodsDTO goodsRetrieve(String gCode);
	public int goodsAdd(GoodsDTO dto);
	public int goodsZzim(GoodsDTO dto);
	public List<GoodsDTO> searchGoods(String gName);

}
