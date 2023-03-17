package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	
	@GetMapping("event/all_event")  // 전체 이벤트
	public String all_event() {
		return"event/all_event";
	}
	
	@GetMapping("event/pro_event")  // 진행중 이벤트
	public String pro_event() {
		return"event/pro_event";
	}
	
	@GetMapping("event/final_event")  // 종료 이벤트
	public String final_event() {
		return"event/final_event";
	}
	
	@GetMapping("event/event_view")  // 이벤트 뷰페이지
	public String final_event_view() {
		return"event/event_view";
	}
}
