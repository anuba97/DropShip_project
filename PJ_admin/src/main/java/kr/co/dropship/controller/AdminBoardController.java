package kr.co.dropship.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.dropship.service.AdminService;

@Controller
public class AdminBoardController {
	
	@Autowired
	AdminService adminMemberService;
	
	@Autowired
	HttpSession session;

	@GetMapping("admin_eventBoardAdd")
	public String admin_eventBoardAdd(Model model) {
		return "admin_eventBoardAdd";
	}
	@GetMapping("admin_eventBoardView")
	public String admin_eventBoardView(Model model) {
		return "admin_eventBoardView";
	}
	@GetMapping("admin_eventBoardModify")
	public String admin_eventBoardModify(Model model) {
		return "admin_eventBoardModify";
	}
	
	@GetMapping("admin_noticeBoardAdd")
	public String admin_noticeBoardAdd(Model model) {
		return "admin_noticeBoardAdd";
	}
	@GetMapping("admin_noticeBoardView")
	public String admin_noticeBoardView(Model model) {
		return "admin_noticeBoardView";
	}
	@GetMapping("admin_noticeBoardModify")
	public String admin_noticeBoardModify(Model model) {
		return "admin_noticeBoardModify";
	}
	
	@GetMapping("admin_freeBoardAdd")
	public String admin_freeBoardAdd(Model model) {
		return "admin_freeBoardAdd";
	}
	@GetMapping("admin_freeBoardView")
	public String admin_freeBoardView(Model model) {
		return "admin_freeBoardView";
	}
	@GetMapping("admin_freeBoardModify")
	public String admin_freeBoardModify(Model model) {
		return "admin_freeBoardModify";
	}
	
	
	
	
	
}//AdminBoardController
