package kr.co.dropship.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.dropship.vo.AdminMemberVo;

@Mapper
public interface AdminMemberMapper {

	public AdminMemberVo adminMemberSelectOne(String admin_id, String admin_pw); //admin 로그인

	public void insertMember(AdminMemberVo adminMemberVo); //admin 1명 추가

	public List<AdminMemberVo> selectAdminList(int startRow, int endRow); //admin 리스트

	public int selectCount(); //admin list page 카운트하는 문구

	public AdminMemberVo selectOne(String admin_id); //admin 1명 정보만 불러오기

	public void updateAdminData(AdminMemberVo adminMemberVo); //admin 정보 업데이트
	
	public void updateAdminPW(AdminMemberVo adminMemberVo); //admin 비번 업데이트

	public void memberDelete(String admin_id); //admin 삭제
	
	public int adminMemberCheckId(String admin_id); //admin ID 중복 체크
	
}//AdminMemberMapper