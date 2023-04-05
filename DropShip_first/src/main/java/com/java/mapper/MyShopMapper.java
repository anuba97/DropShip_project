package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.Cart_MemberVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WishListVo;

@Mapper
public interface MyShopMapper {
	
	///////////----------↓--------↓------order(주문) 관련 -------------↓--------↓---------//////////
	int insertDelivery();   //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	int insertDelivery2();  //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	int selectDeliverySeq();  //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	int insertOrder_Member2(int member_id, int delivery_id, Order_MemberVo order_memberVo);	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	void insertOrder_Detail(int order_member_id, int work_id, int option_id, int total_price);	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	// 작품상세페이지 or 장바구니에서 주문할 때 주문상세 DB에 저장
	void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList, //shopmapper에서 주석처리함????????
			int total_price_int);
	
	Order_MemberVo selectOrderMemberOne_result(int order_member_id);  //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ

	List<Order_Detail_inquireVo> selectOrderDetailByMemberId(int member_id, String fr_date, String to_date); //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	// 회원 마이페이지 주문조회 클릭시 총 주문 수 보여줄려고
	int selectOrder_member_count(int member_id, String fr_date, String to_date);   //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	////////////////마이페이지 회원 주문조회 상세페이지 보여줄 때 join하지 않는 대신 DB 5번 왕복하는 방식 /////////////  
	List<Order_DetailVo> selectOrderDetail(int order_member_id);  //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
	
	// 회원 장바구니(Cart_Member)에 작품 insert
	void insertCart_Member(int member_id, int work_id, int option_id); //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ

	List<Cart_MemberVo> selectCart_MemberList(int member_id);  //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ

	// 장바구니에서 작품 주문 후 장바구니에 담긴 것들 삭제
	void deleteCart_member(int member_id, List<Integer> optionIdList); //shopMapper에서 주석처리함????????????
	
	
	
	///////////----------↓--------↓------ 찜리스트 관련 -------------↓--------↓---------//////////
	int selectWishListCount(int member_id);  // 찜 리스트 page 카운트하는 구문
	
	List<WishListVo> selectWishlistpage(int startRow, int endRow, int member_id); // 찜리스트 page 가져오기
	
	int selectWorkWishListCheck(String member_id, int work_id);  // 찜리스트에 작품이 있는지 확인
	
	int insertWorkWishList(String member_id, int work_id); // 찜리스트에 저장

	int selectWishlistCount(int member_id);  // 찜리스트에 member_id가 저장한 작품이 있는지 확인 

	List<WishListVo> selectMypageView(int member_id);  // mypage 페이지에 보여주는 작품 찜리스트 가져오기
	
	void deleteWorkWishList(int id); // 찜 리스트 삭제

	void deleteCheckBox(List<Integer> selectedItemsList);  // 찜 리스트(체크박스) 삭제

	void deleteAll_items(int member_id); // 찜 리스트(전체) 삭제

	

	


	
	
}
