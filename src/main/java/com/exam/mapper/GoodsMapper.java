package com.exam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.dto.GoodsDTO;

@Mapper
public interface GoodsMapper {

	public List<GoodsDTO> goodsList();
	public GoodsDTO goodsRetrieve(String gCode);
	
	//insert 일때 int가 관례. 업로드 성공,실패가 숫자로 뜬다
	public int goodsZzim(GoodsDTO dto);
}
