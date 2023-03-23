package kr.co.dropship.service;

import java.util.Map;

import kr.co.dropship.vo.AdminMemberVo;

public interface AdminMemberService {
	
	public AdminMemberVo adminMemberSelectOne(String admin_id, String admin_pw); //admin 로그인

	public void insertMember(AdminMemberVo adminMemberVo); //admin 1명 추가

	public Map<String, Object> selectAdminList(int page); //admin 리스트와 page 불러오기

	public AdminMemberVo selectOne(String admin_id); //admin 1명 정보만 불러오기

	public void updateAdminData(AdminMemberVo adminMemberVo); //admin 정보 업데이트

	public void updateAdminPW(AdminMemberVo adminMemberVo); //admin 비번 업데이트

	public void admin_memberDelete(String admin_id); //admin 삭제

	public int adminMemberCheckId(String admin_id); //admin ID 중복 체크

	
	
	
}//AdminMemberService
