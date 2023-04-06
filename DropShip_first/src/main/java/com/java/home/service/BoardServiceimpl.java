package com.java.home.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.BoardMapper;
import com.java.vo.BoardVo;

@Service
public class BoardServiceimpl implements BoardService{
	@Autowired
	BoardMapper boardMapper;
	
	@Override // 전체게시글 가져오기
	public Map<String, Object> selectBoardAll(int page) {
		// 페이지 page, 총개수listCount, maxpage, startpage, endpage, startrow, endrow 
		
		HashMap<String, Object> map = pageMethod(page);
		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");
		
		// 전체게시글 가져오기
		List<BoardVo> list = boardMapper.selectBoardAll(startRow,endRow);
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxpage", map.get("maxpage"));
		map.put("startpage", map.get("startpage"));
		map.put("endpage", map.get("endpage"));
		
		return map;
	} // selectBoardList
	
	public HashMap<String, Object> pageMethod(int page){//넘버링 
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = boardMapper.selectCount();
		
		int rowPerPage = 5;
		int pageList = 5;
		int maxpage = (int)(Math.ceil((double)listCount/rowPerPage));
		int startpage = ((page-1)/pageList)*pageList+1;
		int endpage = maxpage;
		if(endpage > startpage + pageList - 1) {
			endpage = startpage + pageList -1;
		}
		int startRow = (page - 1)*rowPerPage +1; 
		int endRow = startRow + rowPerPage -1;
		
		
		
		map.put("listCount", listCount);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//페이지 메소드
	
	@Override // 파일첨부 게시글 저장
	public void insertBoard(BoardVo boardVo) {
		boardMapper.insertBoard(boardVo);
	}

	   @Override
	   public Map<String, Object> selectOne(int id) {
	      Map<String, Object> map = new HashMap<>();
	      BoardVo boardVo = boardMapper.selectOne(id);
	      BoardVo preBoardVo = boardMapper.preSelectOne(id);
	      BoardVo nextBoardVo = boardMapper.nextSelectOne(id);
	      map.put("boardVo", boardVo);
	      map.put("preBoardVo", preBoardVo);
	      map.put("nextBoardVo", nextBoardVo);
	      boardMapper.updateFreeBoard_hit(id);
	      
	      return map;
	   }
	 
    @Override //게시글 삭세
	public void deleteBoard(int id) {
		boardMapper.deleteBoard(id);
	}

	@Override //게시글 수정 
	public void updateBoard(BoardVo boardVo) {
		boardMapper.updateBoard(boardVo);
	}   
	
    @Override //admin 전용 게시글 불러들이기(이전글 다음글 포함x )
	public BoardVo selectOneforAdmin(int id) {
		BoardVo boardVo = boardMapper.selectOneforAdmin(id);
		return boardVo;
	}
	
	@Override //게시글 수정 
	public void adminupdateBoard(BoardVo boardVo) {
		boardMapper.adminupdateBoard(boardVo);
	}
	
}
