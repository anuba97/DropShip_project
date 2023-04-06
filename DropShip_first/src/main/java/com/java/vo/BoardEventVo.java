package com.java.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardEventVo {
	
	private int id, eventboard_istop, admin_id, eventboard_hit, eventboard_status;
	private String eventboard_title, eventboard_content, eventboard_file_name;
	private Date eventboard_date, eventboard_update_date;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd\'T\'HH:mm")
    private Date eventboard_start;
   
    @DateTimeFormat(pattern = "yyyy-MM-dd\'T\'HH:mm")
    private Date eventboard_end;
	
	private String admin_login_id, admin_name, searchType, searchWord;
	
}
