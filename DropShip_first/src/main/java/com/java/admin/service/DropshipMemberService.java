package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.Count_Order_Price_By_MonthVo;
import com.java.vo.DropshipMemberVo;
import com.java.vo.MemberCountDayVo;

public interface DropshipMemberService {

	public Map<String, Object> selectMemberList(int page); //맴버 전체 리스트 가져오기

	public DropshipMemberVo dropship_memberselectOne(int id);

	public Map<String, Object> indexMemberList(int page);
	
	public List<MemberCountDayVo> selectMember_Reg_Date();

	public List<Count_Order_Price_By_MonthVo> selectOrderTotalByMonth();

}//DropshipMemberService
