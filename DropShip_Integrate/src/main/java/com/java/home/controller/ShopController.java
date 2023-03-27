package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("shop/")
public class ShopController {
	
	@GetMapping("best_list")	// 베스트	작품
	public String best_list(Model model) {
		return "home/shop/best_list";
	}
	
	@GetMapping("painting_list")	// 그림 작품
	public String painting_list(Model model) {
		return "home/shop/painting_list";
	}
	
	@GetMapping("painting_item")	// 그림 구매창
	public String painting_item(Model model) {
		return "home/shop/painting_item";
	}
	
	@GetMapping("artist_list")	  // 작가별
	public String artist_list(Model model) {
		return "home/shop/artist_list";
	}
	
	@GetMapping("artist_view")	  // 작가별 상세페이지
	public String artist_view(Model model) {
		return "home/shop/artist_view";
	} 
	
	@GetMapping("genre_list")    // 사진 인화
	public String genre_list(Model model) {
		return "home/shop/genre_list";
	} 
	
	@GetMapping("shop/compare")  // 나의 마일리지
	public String compare(Model model) {
		return "shop/compare";
	}
	@GetMapping("shop/compare2")  // 나의 마일리지
	public String compare2(Model model) {
		return "shop/compare2";
	}
	
}
