package com.java.vo;

import java.sql.Date;

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
public class BoardNoticeVo {
	
	private int id, noticeboard_istop, admin_id, noticeboard_hit;
	private String noticeboard_title, noticeboard_content, noticeboard_file_name;
	private Date noticeboard_date, noticeboard_update_date;
	
	private String admin_login_id, admin_name, searchType, searchWord;
	
}
