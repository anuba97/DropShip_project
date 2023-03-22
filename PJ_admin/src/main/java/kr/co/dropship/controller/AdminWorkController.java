package kr.co.dropship.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.dropship.service.AdminMemberService;

@Controller
public class AdminWorkController {
	
	@Autowired
	AdminMemberService adminMemberService;
	
	@Autowired
	HttpSession session;

	@GetMapping("admin_artistAdd")
	public String admin_artistAdd(Model model) {
		return "admin_artistAdd";
	}
	
	@GetMapping("admin_artistModify")
	public String admin_artistModify(Model model) {
		return "admin_artistModify";
	}
	
	
	
}//AdminBoardController
