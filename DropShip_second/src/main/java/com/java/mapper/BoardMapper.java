package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardVo;

@Mapper
public interface BoardMapper {
	
	public List<BoardVo> selectBoardAll(int startRow, int endRow);//전체 페이지 + 페이지 넘버링
	
	public int selectCount(); // 넘버링 카운트
	
	public void insertBoard(BoardVo boardVo);// 파일첨부게시글 저장

	public BoardVo selectOne(int id);//게시글 하나 불러오기 
	
	public BoardVo preSelectOne(int id);
	
	public BoardVo nextSelectOne(int id);
	
	public void updateFreeBoard_hit(int id); //조회수 1 증가하기
	
	public void updateBoard(BoardVo boardVo);// 게시글 수정
	
	public void adminupdateBoard(BoardVo boardVo);// 게시글 수정

	public void deleteBoard(int id);// 게시글 삭제

	public BoardVo selectOneforAdmin(int id); //admin 페이지에서 게시글 하나 가져오기(이전글 다음글 없는거)
	
}
