package com.java.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("event/")
public class EventController {
	
	@GetMapping("all_event")  // 전체 이벤트
	public String all_event() {
		return"home/event/all_event";
	}
	
	@GetMapping("pro_event")  // 진행중 이벤트
	public String pro_event() {
		return"home/event/pro_event";
	}
	
	@GetMapping("final_event")  // 종료 이벤트
	public String final_event() {
		return"home/event/final_event";
	}
	
	@GetMapping("event_view")  // 이벤트 뷰페이지
	public String final_event_view() {
		return"home/event/event_view";
	}
}
