package com.java.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.home.service.ShopService;
import com.java.vo.WorkVo;

@Controller
@RequestMapping("shop/")
public class ShopController {
	
	@Autowired
	ShopService shopservice;
	
	@Autowired
	WorkVo workVo;
	
	@GetMapping("best_list")	// 베스트	작품 페이지로 이동
	public String best_list(WorkVo workVo, Model model) {
		List<WorkVo> list = shopservice.selectWorkBest();
		//System.out.println("controller에서 보내는 list"+list);
		model.addAttribute("list",list);
		//System.out.println("DB에서 받아온 list 값"+list);
		return "home/shop/best_list";
	}
	
	@GetMapping("painting_list")	// 그림 작품
	public String painting_list(Model model) {
		return "home/shop/painting_list";
	}
	
	@GetMapping("painting_item")	// 작품 구매창 페이지로 이동
	public String painting_item(String id, Model model) {
		workVo = shopservice.selectWorkBuy(Integer.parseInt(id));
		model.addAttribute("workVo", workVo);
//		System.out.println("DB에서 가져온 데이터 : "+workVo);
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
