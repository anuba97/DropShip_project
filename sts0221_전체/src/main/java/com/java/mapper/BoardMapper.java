package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import com.java.vo.BoardVo;

@Mapper //sqlSessionTemplate이 이것덕에 들어감(getConnection()한 것과 비슷)
public interface BoardMapper {

	public List<BoardVo> selectBoardList(int startrow, int endrow);

	public int selectCount();

	public BoardVo selectOne(int bno);
	
	public void updateBoard(int bno);
	
	// 조회수 1 증가
	public void updateBhitUp(int bno);
	
	// 파일첨부게시글 저장
	public void insertBoard(BoardVo boardVo);
	
	// 게시글 수정
	public void updateBoard(BoardVo boardVo);

	// 게시글 삭제
	public void deleteBoard(int bno);

	// 덧글 달기
	public void insertReply(BoardVo boardVo);

	// 덧글 달기 전 bstep 1씩 증가시키기 전처리
	public void updateReplyStepUp(BoardVo boardVo);

	

	
	
}
