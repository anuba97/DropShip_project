package kr.co.dropship.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.dropship.vo.DropshipMemberVo;

@Mapper
public interface DropshipMemberMapper {

	public List<DropshipMemberVo> selectMemberList(int startRow, int endRow); //맴버 전체 리스트 가져오기

	public int selectCount(); //맴버 list page 카운트

	public DropshipMemberVo dropship_memberselectOne(String member_login_id);

	
	
}//AdminMemberMapper