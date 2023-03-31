package com.java.home.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.java.mapper.ShopMapper;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Service
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	ShopMapper shopMapper;
	
	@Autowired
	WorkVo workVo;
	
	@Autowired
	ArtistVo artistVo;
	
	
	//////////////////↓ Work(작품) 관련 ↓ /////////////////////////
	
	// 작품 베스트 가져오기
	@Override
	public List<WorkVo> selectWorkBest() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkBest();
		System.out.println(list.size());
		for(int i = 0; i< list.size(); i++) {
			//System.out.println("리스트 서비스 임플 작품이름: " + list.get(i).getWork_name());
		}
		return list;
	}

	// 작품(구매창) 1개 가져오기
	@Override
	public WorkVo selectWorkBuy(int id) {
		workVo = shopMapper.selectWorkBuy(id);
		return workVo;
	}

	// 주문페이지용 작품 1개 가져오기(전체컬럼 아니고 일부만 가져옴)
	@Override
	public WorkVo selectWorkOne(int id) {
		workVo = shopMapper.selectWorkOne(id);
		return workVo;
	}

	
}
