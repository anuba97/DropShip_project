package kr.co.dropship.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.dropship.service.AdminService;

@Controller
public class AdminOrderController {
	
	@Autowired
	AdminService adminMemberService;
	
	@Autowired
	HttpSession session;

	@GetMapping("admin_orderDetail")
	public String admin_orderDetail(Model model) {
		return "admin_orderDetail";
	}
	
	@GetMapping("admin_printingOrderDetail")
	public String admin_printingOrderDetail(Model model) {
		return "admin_printingOrderDetail";
	}
	
	
}//AdminBoardController
