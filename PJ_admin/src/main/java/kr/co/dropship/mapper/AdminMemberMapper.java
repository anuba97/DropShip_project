package kr.co.dropship.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.dropship.vo.AdminMemberVo;

@Mapper
public interface AdminMemberMapper {

	public AdminMemberVo adminMemberSelectOne(String admin_id, String admin_pw); //admin 로그인

	public void insertMember(AdminMemberVo adminMemberVo); //admin 추가

	public List<AdminMemberVo> selectAdminList(int startRow, int endRow); //admin 리스트

	public int selectCount();

	public AdminMemberVo selectOne(String admin_id);

	public void updateAdminData(AdminMemberVo adminMemberVo);
	
	public void updateAdminPW(AdminMemberVo adminMemberVo);

	public void memberDelete(String admin_id);
	
	public int adminMemberCheckId(String admin_id);
	
}