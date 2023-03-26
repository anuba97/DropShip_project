package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BxaboutController {
	
	@GetMapping("bxabout/about")  // 회사소개
	public String about() {
		return"bxabout/about";
	}
	
	@GetMapping("bxabout/faq")  // Q&A
	public String faq() {
		return"bxabout/faq";
	}
	
	@GetMapping("bxabout/privacy")  // 개인정보처리방침
	public String privacy() {
		return"bxabout/privacy";
	}
	
	@GetMapping("bxabout/term")  // 이용약관
	public String term() {
		return"bxabout/term";
	}
	
	@GetMapping("bxabout/search")  // 검색창
	public String search() {
		return"bxabout/search";
	}
	
}
