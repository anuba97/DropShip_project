package com.java.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminOrderController {
	

	@GetMapping("admin_orderDetail")
	public String admin_orderDetail(Model model) {
		return "admin/admin_orderDetail";
	}
	
	@GetMapping("admin_printingOrderDetail")
	public String admin_printingOrderDetail(Model model) {
		return "admin/admin_printingOrderDetail";
	}
	
	
}//AdminBoardController
