package com.java.vo;

import java.sql.Date;

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
public class WorkReViewVo {
	
	private int id, work_id, member_id;
	private Date review_date;
	private int review_rate;
	private String review_title, review_content;
	

}
