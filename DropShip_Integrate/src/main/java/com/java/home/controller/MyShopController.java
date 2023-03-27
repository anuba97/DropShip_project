package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("myshop/")
public class MyShopController {
	
	@GetMapping("cart")	// 장바구니
	public String cart(Model model) {
		return "home/myshop/cart";
	}
	
	@GetMapping("personalpay")	// 개인결제창
	public String personalpay(Model model) {
		return "home/myshop/personalpay";
	}
	
	@GetMapping("personalpayform")	// 개인결제창 다음단계
	public String personalpayform(Model model) {
		return "home/myshop/personalpayform";
	}
	
	@GetMapping("mypage")	// 마이페이지  ( 로그인이 되었을때만 [회원가입 -> 마이페이지로] 변경해서 보이게함)
	public String mypage(Model model) {
		return "home/myshop/mypage";
	}
	
	@GetMapping("orderinquiry")	// 주문조회, 주문목록/배송조회
	public String orderinquiry(Model model) {
		return "home/myshop/orderinquiry";
	}
	
	@RequestMapping("order_form")	// 작품 구매 페이지
	public String order_form(Model model) {
		return "home/myshop/order_form";
	}
	
	@RequestMapping("order_result")	// 작품 구매완료 페이지
	public String order_result(Model model) {
		return "home/myshop/order_result";
	}
	
	@GetMapping("my_wishlist")	// 찜 리스트
	public String my_wishlist(Model model) {
		return "home/myshop/my_wishlist";
	}
	
	@GetMapping("orderinquiry_view")	// 구매 상세내역
	public String orderinquiry_view(Model model) {
		return "home/myshop/orderinquiry_view";
	}
	
	@GetMapping("my_coupon")	// 나의 쿠폰
	public String my_coupon(Model model) {
		return "home/myshop/my_coupon";
	}
	
	@GetMapping("my_mileage")  // 나의 마일리지
	public String my_mileage(Model model) {
		return "home/myshop/my_mileage";
	}
	
	
	
}
