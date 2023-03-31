package com.java.vo;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
// 회원 주문상세 테이블
public class Order_DetailVo {
	
	private int id; 				// 회원 주문상세 고유번호
	private int order_member_id; 	// 회원 주문 고유번호 
	private int work_id; 			// 작품 고유번호.
	private int option_id; 			// 옵션 고유번호. 어느 작품의 어느 옵션들이 선택됐는지
	private int total_price; 		// 총 합계금액. 한 작품 * 개수의 총 합계금액
	private int event_work_sale; 	// 이벤트 작품 할인금액. 한 작품 * 개수의 이벤트 작품 행사로 할인받는 %
	private int event_period_sale;  // 이벤트 기간 할인금액. 한 작품 * 개수의 이벤트 기간 행사로 할인받는 %
	private int final_price; 		// 최종 결제금액. 한 작품 * 개수 할인 받을거 다 받고 결제하는 금액
	
	
}
