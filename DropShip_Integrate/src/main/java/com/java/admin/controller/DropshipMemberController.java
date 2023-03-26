package com.java.admin.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.admin.service.DropshipMemberService;
import com.java.vo.DropshipMemberVo;


@Controller
public class DropshipMemberController {
	
	@Autowired
	DropshipMemberService dropshipMemberService;
	
	@Autowired
	HttpSession session;

	
	@GetMapping("dropship_memberList")
	public String dropship_memberList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = dropshipMemberService.selectMemberList(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "dropship_memberList";
	}
	
	@RequestMapping("dropship_memberDetail")//맴버 1명 정보보기
	public String dropship_memberselectOne(@RequestParam String member_login_id, @RequestParam int page, Model model) {
		DropshipMemberVo dropshipMemberVo = dropshipMemberService.dropship_memberselectOne(member_login_id);
		model.addAttribute("dropshipMemberVo", dropshipMemberVo);
		model.addAttribute("page", page);
		return "dropship_memberDetail";
	}//admin_memberModify
	
	
}//AdminBoardController
