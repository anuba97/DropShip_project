package com.java.service;

import java.util.Map;

import com.java.vo.BoardVo;

public interface BoardService {
	// 전체게시글 가져오기
	public Map<String, Object> selectBoardList(int page);
	
	// 1개 게시글 가져오기
	public BoardVo selectOne(int bno);
	
	// 파일 첨부 글 저장
	public void insertBoard(BoardVo boardVo);
	
	// 게시글 수정
	public void updateBoard(BoardVo boardVo);

	// 게시글 삭제
	public void deleteBoard(int bno);

	// 덧글 달기
	public void insertReply(BoardVo boardVo);
	
}
