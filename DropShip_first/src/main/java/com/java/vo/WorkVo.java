package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class WorkVo {
	
    private int id;
    private String work_name;
    private int artist_id;
    private String work_genre;
    private String work_subject;
    private String work_img_url;
    private String work_content;
    private Double work_sale;	// double임 !!! 세일 퍼센테이지 0.00 소숫점 두자리까지 표현 가능
    private int work_isBest; // 1일때만 베스트 상품.
    private Date work_reg_date;
    private int work_price;
    private String work_display_position;
    private int work_hit;
    private int admin_id;
    private int work_available;
    
    
    private String artist_name; // selectWorkAll(), selectWorkOne() 함수용. JOIN시 사용. 원래 Work테이블에 artist_name컬럼은 없음.
    
    
   
	
}
