package com.java.admin.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.AdminMapper;
import com.java.vo.AdminVo;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;

	////////////////// ↓ AdminMember(관리자) 관련 ↓ /////////////////////////

	@Override
	public AdminVo adminMemberSelectOne(String admin_login_id, String admin_pw) {
		AdminVo adminVo = adminMapper.adminMemberSelectOne(admin_login_id, admin_pw);
		return adminVo;
	}// adminMemberSelectOne

	@Override
	public void insertMember(AdminVo adminMemberVo) {
		adminMapper.insertMember(adminMemberVo);
	}// insertMember

	@Override
	public Map<String, Object> selectAdminList(int page) {
		HashMap<String, Object> map = pageMethod(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<AdminVo> list = adminMapper.selectAdminList(startRow, endRow);

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}// selectAdminList

	public HashMap<String, Object> pageMethod(int page) {
		HashMap<String, Object> map = new HashMap<>();

		int listCount = adminMapper.selectCount();
		int rowPerPage = 10; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
																// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}

		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}// pageMethod

	@Override
	public AdminVo selectOne(int id) {
		AdminVo adminMemberVo = adminMapper.selectOne(id);
		return adminMemberVo;
	}// selectOne

	@Override
	public void updateAdminData(AdminVo adminMemberVo) {
		adminMapper.updateAdminData(adminMemberVo);
	}// updateAdminData

	@Override
	public void updateAdminPW(AdminVo adminMemberVo) {
		adminMapper.updateAdminPW(adminMemberVo);
	}// updateAdminPW

	@Override
	public void admin_memberDelete(String admin_login_id) {
		adminMapper.admin_memberDelete(admin_login_id);
	}// memberDelete

	@Override
	public int adminMemberCheckId(String admin_login_id) {
		int result = adminMapper.adminMemberCheckId(admin_login_id);
		return result;
	}// adminMemberCheckId

	//////////////// ↓ Artist(작가) 관련 ↓ /////////////////////////

	// 아티스트 전체 리스트 가져오기(각 작가의 등록된 작품들의 리스트도 가져옴)
	@Override
	public List<ArtistVo> selectArtistAll() {
		// 1. 아티스트 목록만 가져오기
		List<ArtistVo> artistList = adminMapper.selectArtistAll();
		// 2. 각 아티스트의 등록된 작품들의 리스트 가져오기
		for (ArtistVo artistVo : artistList) {
			List<WorkVo> workList = selectWorksByArtist(artistVo.getId());
			artistVo.setWorkList(workList);
		}
		return artistList;
	}

	// 아티스트 1명 가져오기
	@Override
	public ArtistVo selectArtistOne(int id) {
		artistVo = adminMapper.selectArtistOne(id);
		return artistVo;
	}

	// 아티스트 등록
	@Override
	public void insertArtist(ArtistVo artistVo) {
		adminMapper.insertArtist(artistVo);
	}

	// 아티스트 수정
	@Override
	public void updateArtistOne(ArtistVo artistVo) {
		adminMapper.updateArtistOne(artistVo);
	}

	// 아티스트 삭제
	@Override
	public void deleteArtist(int id) {
		adminMapper.deleteArtist(id);
	}

	// (작가미상 작품 만들기 위해) 익명아티스트 생성
	@Override
	public void insertAnonymousArtist(ArtistVo artistVo) {
		// 익명 아티스트 insert
		adminMapper.insertAnonymousArtist(artistVo);
	}

	// 작품 추가 전 아티스트 고유번호 확인
	@Override
	public Integer checkArtistId(String artist_name) {
		Integer cnt = adminMapper.checkArtistId(artist_name);
		return cnt;
	}

	// ARTIST_SEQ의 CURRVAL 가져오기 (작가미상으로 작품 등록시 익명아티스트 생성 후 익명아티스트의 고유번호 ID 가져오기 위해)
	@Override
	public String selectCurrval() {
		String current_id = adminMapper.selectCurrval();
		return current_id;
	}

	////////////////// ↓ Work(작품) 관련 ↓ /////////////////////////

	// 작품 전체 가져오기
	@Override
	public List<WorkVo> selectWorkAll() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = adminMapper.selectWorkAll();
		return list;
	}

	// 작품 1개 가져오기
	@Override
	public WorkVo selectWorkOne(int id) {
		workVo = adminMapper.selectWorkOne(id);
		return workVo;
	}

	// 작품 등록
	@Override
	public void insertWork(WorkVo workVo) {
		adminMapper.insertWork(workVo);
	}

	// 작품 수정
	@Override
	public void updateWorkOne(WorkVo workVo) {
		adminMapper.updateWorkOne(workVo);
	}

	// 작품 삭제
	@Override
	public void deleteWork(int id) {
		adminMapper.deleteWork(id);
	}

	// 각 작가의 등록된 작품들의 리스트 가져오기
	public List<WorkVo> selectWorksByArtist(int artistId) {
		return adminMapper.selectWorksByArtist(artistId);
	}

}// AdminMemberServiceImpl
