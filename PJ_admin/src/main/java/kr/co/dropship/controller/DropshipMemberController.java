package kr.co.dropship.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dropship.service.DropshipMemberService;
import kr.co.dropship.vo.AdminMemberVo;
import kr.co.dropship.vo.DropshipMemberVo;


@Controller
public class DropshipMemberController {
	
	@Autowired
	DropshipMemberService dropshipMemberService;
	
	@Autowired
	HttpSession session;

	
	@GetMapping("dropship_customerList")
	public String dropship_customerList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = dropshipMemberService.selectMemberList(page);
		model.addAttribute("map", map);
		return "dropship_customerList";
	}
	
	@GetMapping("dropship_customerDetail")//맴버 1명 정보보기
	public String dropship_customerDetail(@RequestParam String member_login_id, Model model) {
		DropshipMemberVo dropshipMemberVo = dropshipMemberService.selectOne(member_login_id);
		model.addAttribute("dropshipMemberVo", dropshipMemberVo);
		return "dropship_customerDetail";
	}//admin_memberModify
	
	
}//AdminBoardController
