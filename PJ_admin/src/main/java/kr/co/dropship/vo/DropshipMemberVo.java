package kr.co.dropship.vo;

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
public class DropshipMemberVo {
	
	private String member_login_id, member_pw, member_name, member_email, member_birth, member_road, member_addr, member_nname; 
	private int id, member_phone, member_zip, admin_ban;
	private Date member_reg_date;
	
}

  