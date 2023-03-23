package kr.co.dropship.service;

import java.util.Map;

import kr.co.dropship.vo.DropshipMemberVo;

public interface DropshipMemberService {

	public Map<String, Object> selectMemberList(int page); //맴버 전체 리스트 가져오기

	public DropshipMemberVo dropship_memberselectOne(String member_login_id);

}//DropshipMemberService
