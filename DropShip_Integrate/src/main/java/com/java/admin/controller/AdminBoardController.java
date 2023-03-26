package com.java.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminBoardController {
	
	@GetMapping("admin_eventBoardAdd")
	public String admin_eventBoardAdd(Model model) {
		return "admin/admin_eventBoardAdd";
	}
	@GetMapping("admin_eventBoardView")
	public String admin_eventBoardView(Model model) {
		return "admin/admin_eventBoardView";
	}
	@GetMapping("admin_eventBoardModify")
	public String admin_eventBoardModify(Model model) {
		return "admin/admin_eventBoardModify";
	}
	
	@GetMapping("admin_noticeBoardAdd")
	public String admin_noticeBoardAdd(Model model) {
		return "admin/admin_noticeBoardAdd";
	}
	@GetMapping("admin_noticeBoardView")
	public String admin_noticeBoardView(Model model) {
		return "admin/admin_noticeBoardView";
	}
	@GetMapping("admin_noticeBoardModify")
	public String admin_noticeBoardModify(Model model) {
		return "admin/admin_noticeBoardModify";
	}
	
	@GetMapping("admin_freeBoardAdd")
	public String admin_freeBoardAdd(Model model) {
		return "admin/admin_freeBoardAdd";
	}
	@GetMapping("admin_freeBoardView")
	public String admin_freeBoardView(Model model) {
		return "admin/admin_freeBoardView";
	}
	@GetMapping("admin_freeBoardModify")
	public String admin_freeBoardModify(Model model) {
		return "admin/admin_freeBoardModify";
	}
	
	
	
	
	
}//AdminBoardController
