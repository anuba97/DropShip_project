package com.java.home.service;

import java.util.Map;

import com.java.vo.BoardVo;

public interface BoardService {
	
	public Map<String, Object> selectBoardAll(int page); //전체 게시글 불러들이기
	
	public void insertBoard(BoardVo boardVo); //글 등록

	public Map<String, Object> selectOne(int id);//게시글 불러오기(이전글 다음글기능 포함)
	
	public BoardVo selectOneforAdmin(int id);//admin에서 불러들이는거 (이전글 다음글 기능 포함x)

	public void deleteBoard(int id);//글 삭제

	public void updateBoard(BoardVo boardVo); //글 수정

	public void adminupdateBoard(BoardVo boardVo);//admin이 게시글(글 정지 or 사용) 업뎃
}
