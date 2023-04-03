package com.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.ArtistVo;
import com.java.vo.Cart_MemberVo;
import com.java.vo.DeliveryVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WorkVo;

@Mapper
public interface ShopMapper {

	
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
	
	int selectWorkCount();  // 작품 list page 카운트하는 구문

	List<WorkVo> selectWorkList(int startRow, int endRow);  // 작품 그림작품 가져오기
	
	List<WorkVo> selectWorkBest(); // 작품 베스트 가져오기
	
	List<WorkVo> selectWorkNew();  // 작품 new 가져오기

	WorkVo selectWorkBuy(int work_id);  // 작품(구매창) 1개 가져오기
	
	List<WorkVo> selectWorkArtistAll(String artist_id);  // 작가의 작품들 가져오기
	
	
	//////////////////↓  Artist(작가) 관련 ↓      /////////////////////////
		
	ArtistVo selectArtistAll(String artist_id);  // 작가 전체 가져오기
	
	int selectArtistCount();  // 작가 list page 카운트하는 구문
	
	List<ArtistVo> selectArtistList(int startRow, int endRow);  // 작가별 작가 가져오기
	
	
	
	//////////////////↓  order(주문) 관련 ↓         /////////////////////////

	WorkVo selectWorkOneOrder(int id);	// 작품 주문용 1개 가져오기 (order_form.jsp)

	// 회원 주문 시 회원 주문 테이블(Order_Member)에 데이터 저장
	int insertOrder_Member(int member_id, int delivery_id, String delivery_name, String delivery_phone,
			String delivery_zip, String delivery_road, String delivery_address, String delivery_request);
//	void insertOrder_Member(int member_id, int delivery_id, Order_MemberVo order_memberVo);

	int insertDelivery();
	int insertDelivery2();

	int selectDeliverySeq();

	int selectOrderMemberSeq();

	// Work_Option 테이블 (작품 옵션 테이블) 에 optionVo 저장후 바로 option고유번호(id)반환받기
	int insertOption(OptionVo optionVo);
	
	void insertOrder_Detail(int order_member_id, int work_id, int option_id, int total_price);
//	void insertOrder_Details2(Map<String, Object> paramMap);
	

	// 작품상세페이지 or 장바구니에서 주문할 때 주문상세 DB에 저장
	void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,
			int total_price_int);

	
	int selectOptionSeq();

	Order_MemberVo selectOrderMemberOne_result(int order_member_id);

	List<Order_Detail_inquireVo> selectOrderDetailByMemberId(int member_id);

	//////////////// 마이페이지 회원 주문조회 상세페이지 보여줄 때 join 5번 하는 대신 DB 1번 왕복하는 방식 /////////////  
	Order_Detail_inquire_viewVo selectOptionOneInquiryView(int id);

	//////////////// 마이페이지 회원 주문조회 상세페이지 보여줄 때 join하지 않는 대신 DB 5번 왕복하는 방식 /////////////  
	List<Order_DetailVo> selectOrderDetail(int order_member_id);

	List<OptionVo> selectOptionList(List<Integer> optionIdList);

	List<String> selectArtistName(List<Integer> workIdList);

	List<WorkVo> selectMemberWorkList(List<Integer> workIdList);

	List<ArtistVo> selectArtistOrderList(List<Integer> artistIdList);

	// 회원 장바구니(Cart_Member)에 작품 insert
	void insertCart_Member(int member_id, int work_id, int option_id);

	List<Cart_MemberVo> selectCart_MemberList(int member_id);

	int insertOrder_Member2(int member_id, int delivery_id, Order_MemberVo order_memberVo);


	



}
