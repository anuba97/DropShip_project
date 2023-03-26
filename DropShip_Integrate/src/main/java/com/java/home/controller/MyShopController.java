package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyShopController {
	
	@GetMapping("myshop/cart")	// 장바구니
	public String cart(Model model) {
		return "myshop/cart";
	}
	
	@GetMapping("myshop/personalpay")	// 개인결제창
	public String personalpay(Model model) {
		return "myshop/personalpay";
	}
	
	@GetMapping("myshop/personalpayform")	// 개인결제창 다음단계
	public String personalpayform(Model model) {
		return "myshop/personalpayform";
	}
	
	@GetMapping("myshop/mypage")	// 마이페이지  ( 로그인이 되었을때만 [회원가입 -> 마이페이지로] 변경해서 보이게함)
	public String mypage(Model model) {
		return "myshop/mypage";
	}
	
	@GetMapping("myshop/orderinquiry")	// 주문조회, 주문목록/배송조회
	public String orderinquiry(Model model) {
		return "myshop/orderinquiry";
	}
	
	@RequestMapping("myshop/order_form")	// 작품 구매 페이지
	public String order_form(Model model) {
		return "myshop/order_form";
	}
	
	@RequestMapping("myshop/order_result")	// 작품 구매완료 페이지
	public String order_result(Model model) {
		return "myshop/order_result";
	}
	
	@GetMapping("myshop/my_wishlist")	// 찜 리스트
	public String my_wishlist(Model model) {
		return "myshop/my_wishlist";
	}
	
	@GetMapping("myshop/orderinquiry_view")	// 구매 상세내역
	public String orderinquiry_view(Model model) {
		return "myshop/orderinquiry_view";
	}
	
	@GetMapping("myshop/my_coupon")	// 나의 쿠폰
	public String my_coupon(Model model) {
		return "myshop/my_coupon";
	}
	
	@GetMapping("myshop/my_mileage")  // 나의 마일리지
	public String my_mileage(Model model) {
		return "myshop/my_mileage";
	}
	
	
	
}
