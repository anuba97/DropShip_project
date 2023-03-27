package com.java.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.BoardMapper;
import com.java.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override // 전체게시글 가져오기
	public Map<String, Object> selectBoardList(int page) {
		// 페이지 page, 총개수listCount, maxpage, startpage, endpage, startrow, endrow 
		
		HashMap<String, Object> map = pageMethod(page);
		int startrow = (int) map.get("startrow");
		int endrow = (int) map.get("endrow");
		
		// 전체게시글 가져오기
		List<BoardVo> list = boardMapper.selectBoardList(startrow,endrow);
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxpage", map.get("maxpage"));
		map.put("startpage", map.get("startpage"));
		map.put("endpage", map.get("endpage"));
		
		return map;
	} // selectBoardList
	
	// 페이징 메소드
	public HashMap<String, Object> pageMethod(int page) {
		HashMap<String, Object> map = new HashMap<>();
		int listCount = boardMapper.selectCount(); // listCount: 총 글수
		int rowPerPage = 10; 	// 한 페이지당 보여질 게시글의 개수
		int pageList = 5; 		// 하단에 보여질 페이지들의 개수
		int maxpage = (int)(Math.ceil((double)listCount/rowPerPage)); // maxpage : 최대 페이지
		int startpage = ((page-1)/pageList)*pageList +1; // 하단에 보이는 첫번째 페이지 
		int endpage = maxpage; //
		if(endpage > startpage + pageList - 1) endpage = startpage + pageList - 1; //
		int startrow = (page - 1) * rowPerPage + 1;
		int endrow = startrow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("startrow", startrow);
		map.put("endrow", endrow);
		return map; 
	}//pageMethod()
	
	

	@Override // 1개 게시글 가져오기
	public BoardVo selectOne(int bno) {
		//count 1 증가
		boardMapper.updateBhitUp(bno);
		BoardVo boardVo = boardMapper.selectOne(bno);
		
		return boardVo;
	}// selectOne()

	
	@Override // 파일첨부 게시글 저장
	public void insertBoard(BoardVo boardVo) {
		boardMapper.insertBoard(boardVo);
	}// insertBoard()

	@Override  // 게시글 수정
	public void updateBoard(BoardVo boardVo) {
		boardMapper.updateBoard(boardVo);
	} // updateBoard()

	@Override // 게시글 삭제
	public void deleteBoard(int bno) {
		boardMapper.deleteBoard(bno);
	}// deleteBoard()

	@Override   // 덧글 달기
	public void insertReply(BoardVo boardVo) {
		// 같은 bgroup 안의 글들 중 부모 bstep보다 큰 bstep들을 1씩 모두 증가시켜야
		boardMapper.updateReplyStepUp(boardVo);
		boardMapper.insertReply(boardVo);
	}// insertReply()

}
