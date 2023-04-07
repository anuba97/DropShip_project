package com.java.home.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.java.vo.ArtistVo;
import com.java.vo.Cart_MemberVo;
import com.java.vo.DeliveryVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WorkVo;

@Service
public interface ShopService {
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
	
	Map<String, Object> selectWorkList(int page);  // 작품 그림작품과 page 불러오기  
	
	List<WorkVo> selectWorkBest();	// 작품 베스트 가져오기
	
	List<WorkVo> selectWorkNew();  // 작품 new 가져오기
	
	List<WorkVo> selectWorkArtistAll(int artist_id);  // 작가의 작품들 가져오기

	WorkVo selectWorkBuy(int work_id);  // 작품(구매창) 1개 가져오기

	WorkVo selectWorkOneOrder(int work_id);
	
	List<WorkVo> search( String searchWord); //search 
	
	//////////////////↓  Artist(아티스트) 관련 ↓         /////////////////////////
		
	ArtistVo selectArtistAll(int artist_id);  // 작가 전체 가져오기
	
	Map<String, Object> selectArtistList(int page);  // 작가별 작가와 page 불러오기

	int selectOrderMemberSeq();	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ?????????????????????

	int selectOptionSeq();
	
	int insertOption(OptionVo optionVo);	
	
	Order_Detail_inquire_viewVo selectOptionOneInquiryView(int order_member_id_int);

	List<OptionVo> selectOptionList(List<Integer> optionIdList);

	Map<String, List<? extends Object>> selectMemberWorkList(List<Integer> workIdList);

	//////////////////↓  작품비교 관련 ↓         /////////////////////////
	List<WorkVo> selectWorkCompare(List<Integer> compare_work_id_list); // 작품 비교
	
	

	void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,
			int total_price_int);
//	void insertOrder_Details2(Map<String, Object> paramMap);

	


	
	
	
}
