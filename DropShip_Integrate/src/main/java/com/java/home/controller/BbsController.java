package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BbsController {
	
	@GetMapping("bbs/board")  // 자유게시판
	public String board() {
		return"bbs/board";
	}
	
	@GetMapping("bbs/board_write")  // 자유게시판 글쓰기
	public String board_write() {
		return"bbs/board_write";
	}
	
	@GetMapping("bbs/notice")  // 공지사항
	public String notice() {
		return"bbs/notice";
	}
	
	@GetMapping("bbs/notice_view")  // 공지사항 글쓰기
	public String notice_view() {
		return"bbs/notice_view";
	}
	
	@GetMapping("bbs/support")  // 공지사항 글쓰기
	public String support() {
		return"bbs/support";
	}
}
