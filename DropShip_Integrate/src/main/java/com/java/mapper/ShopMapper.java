package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.WorkVo;

@Mapper
public interface ShopMapper {

	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
	
	List<WorkVo> selectWorkBest(); // 작품 베스트 가져오기

	WorkVo selectWorkBuy(int id);  // 작품(구매창) 1개 가져오기

}
