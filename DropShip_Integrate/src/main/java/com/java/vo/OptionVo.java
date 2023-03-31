package com.java.vo;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//작품 옵션 - option이라는 테이블을 만들 수 없음. 오라클 예약어라고 함. 
// 대신 테이블 명만 work_option이라 해놓음. 그러나 VO는 optionVo로 간단하게 이름지음

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class OptionVo {
 
	 private int id;						// 옵션 고유번호 
	 private int option_size;    			// 사이즈 0- 20.0cm x 35.7cm / 1- 25.0cm x 44.6cm
	 private int option_size_added_price;		// 사이즈 추가되는 가격 20x35면 36500, 25x44면 50300추가됨
	 private int option_media;				 // 미디어 0-canvas / 1-fineArt
	 private Double option_media_price_multiple;	 // 미디어 가격 배수 canvas면 1, fineArt면 1.05
	 private int option_mattier;				// 마띠에르 유무 0-없음 1-선택
	 private int option_frame;				 // 프레임 0-캔버스판넬, 1-래핑캔버스, 2-띄움, 3-원목 띄움, 4-올림우드, 5-앤틱D실버, 6-원목베이지, 7-관화이트, 8-관우드, 9-관블랙
	 private int option_frame_added_price;		 // 프레임 추가되는 가격 캔버스판넬, 래핑캔버스,앤택D실버-0원추가 / 띄움-4000 / 원목 띄움-16000 / 올림우드-20000 / 원목베이지-30000 /관화이트, 관우드, 관블랙-28000 추가
	 private int option_matt;	 			// 매트(여백) 0-없음, 1-2cm, 2-3cm 3-6cm,  4-11cm (프레임이 앤틱D실버와 원목베이지 일때만 매트 선택가능. 기본 '없음')
	 private int option_matt_added_price;		 // 매트 추가되는 가격 없음:0, 2cm:1만, 3cm:2만, 6cm:3만, 11cm:4만원 추가됨
	 private int option_quantity; 			// 수량 
	 private int option_selected_price;		 // 옵션 선택 후 가격 


}