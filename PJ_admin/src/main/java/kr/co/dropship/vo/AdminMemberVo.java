package kr.co.dropship.vo;

import java.sql.Date;
import java.sql.Time;

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
public class AdminMemberVo {
	
	private String admin_id, admin_pw, admin_name, admin_phone, admin_gender, admin_hobby; //admin DB에 맞게 수정해야함.
	private int id, admin_issuper, admin_ban;
	private Date admin_reg_date;

}
