package com.java.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminFrontController {
	
	@GetMapping("admin_login")//로그인 페이지 열기
	public String admin_login(Model model) {
		return "admin/admin_login";
	}//admin_login
	@RequestMapping("admin_index")
	public String admin_index() {
		return "admin/admin_index";
	}
	@GetMapping("admin_tables")
	public String admin_tables(Model model) {
		return "admin/admin_tables";
	}
	@GetMapping("admin_orderList")
	public String admin_orderList(Model model) {
		return "admin/admin_orderList";
	}
	@GetMapping("admin_printingList")
	public String admin_printingList(Model model) {
		return "admin/admin_printingList";
	}
	@GetMapping("admin_noticeBoardList")
	public String admin_noticeBoardList(Model model) {
		return "admin/admin_noticeBoardList";
	}
	@GetMapping("admin_eventBoardList")
	public String admin_eventBoardList(Model model) {
		return "admin/admin_eventBoardList";
	}
	@GetMapping("admin_freeBoardList")
	public String admin_freeBoardList(Model model) {
		return "admin/admin_freeBoardList";
	}
	
	
	
	
	
}
