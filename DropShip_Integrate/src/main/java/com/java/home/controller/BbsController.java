package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("bbs/")
public class BbsController {
	
	@GetMapping("board")  // 자유게시판
	public String board() {
		return "home/bbs/board";
	}
	
	@GetMapping("board_write")  // 자유게시판 글쓰기
	public String board_write() {
		return "home/bbs/board_write";
	}
	
	@GetMapping("notice")  // 공지사항
	public String notice() {
		return "home/bbs/notice";
	}
	
	@GetMapping("notice_view")  // 공지사항 글쓰기
	public String notice_view() {
		return "home/bbs/notice_view";
	}
	
	@GetMapping("support")  // 공지사항 글쓰기
	public String support() {
		return "home/bbs/support";
	}
}
