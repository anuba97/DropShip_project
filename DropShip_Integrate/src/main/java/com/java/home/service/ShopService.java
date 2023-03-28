package com.java.home.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.java.vo.WorkVo;

@Service
public interface ShopService {
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
	
	List<WorkVo> selectWorkBest();	// 작품 베스트 가져오기

	WorkVo selectWorkBuy(int parseInt);  // 작품(구매창) 1개 가져오기
	
	
	
}
