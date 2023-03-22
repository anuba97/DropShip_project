package kr.co.dropship.service;

import java.util.Map;

import kr.co.dropship.vo.AdminMemberVo;

public interface AdminMemberService {
	
	public AdminMemberVo adminMemberSelectOne(String admin_id, String admin_pw); //admin DB에 맞게 수정해야함.

	public void insertMember(AdminMemberVo adminMemberVo);

	public Map<String, Object> selectAdminList(int page);

	public AdminMemberVo selectOne(String admin_id);

	public void updateAdminData(AdminMemberVo adminMemberVo);

	public void updateAdminPW(AdminMemberVo adminMemberVo);

	public void memberDelete(String admin_id);

	public int adminMemberCheckId(String admin_id);

	
	
	
}
