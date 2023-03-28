package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	
	@GetMapping("shop/best_list")	// 베스트	작품
	public String best_list(Model model) {
		return "shop/best_list";
	}
	
	@GetMapping("shop/painting_list")	// 그림 작품
	public String painting_list(Model model) {
		return "shop/painting_list";
	}
	
	@GetMapping("shop/painting_item")	// 그림 구매창
	public String painting_item(Model model) {
		return "shop/painting_item";
	}
	
	@GetMapping("shop/artist_list")	  // 작가별
	public String artist_list(Model model) {
		return "shop/artist_list";
	}
	
	@GetMapping("shop/artist_view")	  // 작가별 상세페이지
	public String artist_view(Model model) {
		return "shop/artist_view";
	} 
	
	@GetMapping("shop/genre_list")    // 사진 인화
	public String genre_list(Model model) {
		return "shop/genre_list";
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
