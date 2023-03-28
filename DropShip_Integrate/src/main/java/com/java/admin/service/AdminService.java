package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.AdminVo;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

public interface AdminService {
	
	
	//////////////////       ↓ AdminMember(관리자) 관련  ↓        /////////////////////////
	
	public AdminVo adminMemberSelectOne(String admin_login_id, String admin_pw); //admin 로그인

	public void insertMember(AdminVo adminVo); // admin 등록

	public Map<String, Object> selectAdminList(int page); //admin 리스트와 page 불러오기

	public AdminVo selectOne(String admin_login_id); //admin 1명 정보만 불러오기

	public void updateAdminData(AdminVo adminVo); //admin 정보 수정

	public void updateAdminPW(AdminVo adminVo); //admin 비번 수정

	public void admin_memberDelete(String admin_login_id); //admin 삭제

	public int adminMemberCheckId(String admin_login_id); //admin ID 중복 체크

	
	//////////////////       ↓  Artist(작가) 관련  ↓        /////////////////////////
	
	public List<ArtistVo> selectArtistAll();	// 아티스트 전체 가져오기

	public ArtistVo selectArtistOne(int id);	// 아티스트 1명 가져오기
	
	public void insertArtist(ArtistVo artistVo);	// 아티스트 등록
	
	public void updateArtistOne(ArtistVo artistVo);		// 아티스트 수정

	public void deleteArtist(int id);	// 아티스트 삭제

	public void insertAnonymousArtist(ArtistVo artistVo); // (작가미상 작품 만들기 위해) 익명아티스트 생성

	public Integer checkArtistId(String artist_name);	// 작품 추가 전 아티스트 고유번호 확인
	
	public String selectCurrval();	// ARTIST_SEQ의 CURRVAL 가져오기 (작가미상으로 작품 등록시 익명아티스트 생성 후 익명아티스트의 고유번호 ID 가져오기 위해)


	//////////////////       ↓  Work(작품) 관련 ↓         /////////////////////////
	
	public List<WorkVo> selectWorkAll();	// 작품 전체 가져오기

	public WorkVo selectWorkOne(int id);	// 작품 1개 가져오기
	
	public void insertWork(WorkVo workVo);	// 작품 등록

	public void updateWorkOne(WorkVo workVo);	// 작품 수정

	public void deleteWork(int id);		// 작품 삭제

	public List<WorkVo> selectWorksByArtist(int artistId);	// 해당 아티스트의 작품들 전체 리스트 가져오기


	
	
	
}//AdminMemberService
