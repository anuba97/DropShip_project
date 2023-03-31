package com.java.home.service;

import java.util.Map;

import com.java.vo.BoardVo;

public interface BoardService {
	public Map<String, Object> selectBoardAll(int page);
	
	public void insertBoard(BoardVo boardVo);

	public Map<String, Object> selectOne(int id);


	public void deleteBoard(int id);

	public void updateBoard(BoardVo boardVo);
}
