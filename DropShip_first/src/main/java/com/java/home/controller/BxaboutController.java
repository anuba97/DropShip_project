package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("bxabout/")
public class BxaboutController {
	
	@GetMapping("about")  // 회사소개
	public String about() {
		return "/home/bxabout/about";
	}
	
	@GetMapping("faq")  // Q&A
	public String faq() {
		return "/home/bxabout/faq";
	}
	
	@GetMapping("privacy")  // 개인정보처리방침
	public String privacy() {
		return "/home/bxabout/privacy";
	}
	
	@GetMapping("term")  // 이용약관
	public String term() {
		return "/home/bxabout/term";
	}
	
	@GetMapping("search")  // 검색창
	public String search() {
		return "/home/bxabout/search";
	}
	
}
