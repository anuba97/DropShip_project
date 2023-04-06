package com.java.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Controller
public class FController {
	
	@Autowired
	ShopService shopservice;
	
	@Autowired
	WorkVo workVo;
	
	@Autowired
	ArtistVo artistVo;
	
	@GetMapping("/")
	public String index(Model model) {
		List<WorkVo> list = shopservice.selectWorkBest();  // best작품 가져오기
		List<WorkVo> newList = shopservice.selectWorkNew(); // new작품 가져오기
		model.addAttribute("BestList",list);
		model.addAttribute("newList",newList);
		System.out.println("DB에서 받아온 newList : "+newList);
		return "index";
	}
	
	@GetMapping("/search")
	public String search(Model model) {
		return "home/bxabout/search";
	}
	
}//FController
