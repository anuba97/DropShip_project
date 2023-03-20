package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@GetMapping("member/login")  // 로그인 페이지
	public String login() {
		return "member/login";
	}
	
	@GetMapping("member/register_intro")  // 회원가입 페이지
	public String register_intro() {
		return "member/register_intro";
	}
	
	@GetMapping("member/register")  // 회원가입1 (약관동의) 페이지
	public String register() {
		return "member/register";
	}
	
	@PostMapping("member/register_form")  // 회원가입2 (아이디, 비번 등등적는) 페이지
	public String register_form() {
		return "member/register_form";
	}
	
	@PostMapping("member/register_result")  // 회원가입 완료 페이지
	public String register_result() {
		return "member/register_result";
	}
	
	@GetMapping("member/register_update_intro")  // 회원정보 변경 인트로 페이지
	public String register_update_intro() {
		return "member/register_update_intro";
	}
	
	@PostMapping("member/register_update_form")  // 회원정보 변경 form 페이지
	public String register_update_form() {
		return "member/register_update_form";
	}
	
	@PostMapping("member/register_update_result")  // 회원정보 변경 완료 페이지
	public String register_update_result() {
		return "member/register_update_result";
	}
	
	@GetMapping("member/register_out")  // 회원탈퇴 페이지
	public String register_out() {
		return "member/register_out";
	}
	
	
	
	
}
