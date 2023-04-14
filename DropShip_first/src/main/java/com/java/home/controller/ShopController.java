package com.java.home.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Controller
@RequestMapping("shop/")
public class ShopController {
	
	@Autowired
	ShopService shopservice;
	
	@Autowired
	WorkVo workVo;
	
	@Autowired
	ArtistVo artistVo;
	
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
		
	@GetMapping("painting_list")    // 그림 작품 페이지로 이동
    public String painting_list(HttpServletRequest request,
    		@RequestParam(defaultValue = "1") int page,
    		@RequestParam(required = false) String work_id,
    		@RequestParam(defaultValue = "high_rate") String sortType, 
    		@RequestParam(defaultValue = "all") String viewOption, Model model) { // 기본은 평점 높은 순으로 정렬
		Cookie[] cookies = request.getCookies(); // 모든 쿠키 가져오기
		if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("work_id")) {
	                String cookieValue = cookie.getValue();
	                model.addAttribute("cookieValue", cookieValue.split(","));
	                break;
	            }
	        }
	    }		
		
		
		Map<String, Object> workMap = shopservice.selectWorkList(page, sortType, viewOption);
		model.addAttribute("workMap", workMap);
		model.addAttribute("sortType", sortType);
		model.addAttribute("viewOption", viewOption);
		return "home/shop/painting_list";
    }
	
	
	
	
	@GetMapping("best_list")	// 베스트	작품 페이지로 이동
	public String best_list(WorkVo workVo, Model model) {
		List<WorkVo> list = shopservice.selectWorkBest(6);	// 판매량 높은 작품 상위 6개만 가져오기
		model.addAttribute("list",list);
		return "home/shop/best_list";
	}
	
	@GetMapping("painting_item")	// 작품 구매창 페이지로 이동
	public String painting_item(int work_id, int artist_id, Model model) {
		workVo = shopservice.selectWorkBuy(work_id); 
		List<WorkVo> list = shopservice.selectWorkArtistAll(artist_id);
		artistVo = shopservice.selectArtistAll(artist_id);
		
		model.addAttribute("workVo", workVo); // 작품1개 객체
		model.addAttribute("list", list); // 작품전체 배열  --- 이렇게 보내는 이유는 painting_item에서 forEach를 사용하기위해서 이렇게 사용함
		model.addAttribute("artistVo", artistVo);  // 작가 전체 객체
		return "home/shop/painting_item";
	}
	
	@PostMapping("compare2")  //상품비교
	public String compare2(@RequestParam("work_id_list") String workIds, WorkVo workVo, Model model) {
		//System.out.println("넘어온 작품id 리스트 : " + workIds);
	    
		String[] workIdsArr = workIds.split(",");
		List<Integer> compare_work_id_list = new ArrayList<>();
		
		for (int i = 0; i < workIdsArr.length && i < 10; i++) { // for문으로 2~10개까지 비교가능, &&는 단락연산자이므로 첫 번째 피연산자가 거짓(배열이 비어있으면) 두번째 피 연산자는 평가되지 않으며 조건은 거짓으로 간주된다.
		    int work_id = Integer.parseInt(workIdsArr[i]);
		    compare_work_id_list.add(work_id);
		}

		List<WorkVo> compareWorkVoList = shopservice.selectWorkCompare(compare_work_id_list);
		model.addAttribute("compareWorkVoList", compareWorkVoList);
		
		return "home/shop/compare2";
	}
	//////////////////↓  Artist(작가) 관련 ↓         /////////////////////////
	
	@GetMapping("artist_list")	  // 작가별 페이지로 이동
	public String artist_list(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = shopservice.selectArtistList(page);
		model.addAttribute("map",map);
		return "home/shop/artist_list";
	}
	
	@GetMapping("artist_view")	  // 작가별 상세페이지
	public String artist_view(int artist_id, Model model) {
		artistVo = shopservice.selectArtistAll(artist_id); 
		List<WorkVo> list = shopservice.selectWorkArtistAll(artist_id);  
		model.addAttribute("artistVo", artistVo); // 작가 전체  
		model.addAttribute("list",list); // 작가의 작품들  
		
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
