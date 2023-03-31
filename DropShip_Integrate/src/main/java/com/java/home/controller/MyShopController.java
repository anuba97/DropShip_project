package com.java.home.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.home.service.MemberService;
import com.java.home.service.ShopService;
import com.java.vo.MemberVo;
import com.java.vo.OptionVo;
import com.java.vo.WorkVo;

@Controller
@RequestMapping("myshop/")
public class MyShopController {

	@Autowired
	ShopService shopservice;

	@Autowired
	MemberService memberservice;

	@Autowired
	HttpSession session;

	@Autowired
	WorkVo workVo;

	@Autowired
	MemberVo memberVo;

	@Autowired
	OptionVo optionVo;

	@GetMapping("cart") // 장바구니
	public String cart(Model model) {
		return "home/myshop/cart";
	}

	@GetMapping("personalpay") // 개인결제창
	public String personalpay(Model model) {
		return "home/myshop/personalpay";
	}

	@GetMapping("personalpayform") // 개인결제창 다음단계
	public String personalpayform(Model model) {
		return "home/myshop/personalpayform";
	}

	@GetMapping("mypage") // 마이페이지 ( 로그인이 되었을때만 [회원가입 -> 마이페이지로] 변경해서 보이게함)
	public String mypage(Model model) {
		return "home/myshop/mypage";
	}

	@GetMapping("mypage_drone") // 마이페이지 (드론페이지)
	public String mypage_dron(Model model) {
		return "home/myshop/mypage_drone";
	}

	@GetMapping("orderinquiry") // 주문조회, 주문목록/배송조회
	public String orderinquiry(Model model) {
		return "home/myshop/orderinquiry";
	}

	@PostMapping("order_form") // 작품 주문 페이지로 이동
	public String order_form() {
		return "home/myshop/order_form";
	}

//	@PostMapping("order_form") // 작품 주문 페이지로 이동 (만드는 중. 다 만들더라도 민수가 작품id, 옵션 정보들을 전달해주는 작업이 완료되어야 보여지기가 가능)
//	public String order_form(String id, OptionVo optionVo, Model model) { // 작품 상세페이지에서 work_id, 작품option들을 전달받음
//
//		// 작품 정보 DB에서 가져오기
//		int work_id = Integer.parseInt(id);
//		workVo = shopservice.selectWorkOne(work_id);
//		
//		// 고객(회원) 정보 DB에서 가져오기 (비회원은 정보 가져올 거 없음)
//		if (session.getAttribute("sessionMember_id") != null) { // 회원일때만 member객체 가져오기
//			int member_id = (int) session.getAttribute("sessionMember_id");
//			memberVo = memberservice.selectOne(member_id); // memberVo엔 member_name, member_phone, member_zip,
//															// member_road, member_address, member_email 만 사용해도 됨
//		} 
//		
//		// 고객이 설정한 옵션들을 토대로 추가되는 가격을 set 후 그 set된 optionVo를 다시 리턴받음(order_form.jsp에서 Subtotal에 보여짐)
//		int work_price = workVo.getWork_price();
//		optionVo = settingOptions(optionVo, work_price);
//		
//		
//		// model에 작품, 회원, 옵션 정보들 담아서 order_form페이지에 전달할 수 있도록 하기
//		model.addAttribute("workVo", workVo);
//		model.addAttribute("memberVo", memberVo);
//		model.addAttribute("optionVo", optionVo);
//
//		return "home/myshop/order_form";
//	}

	
	
	
	
	
	
	@RequestMapping("order_result") // 작품 구매완료 페이지
	public String order_result(Model model) {
		return "home/myshop/order_result";
	}

	@GetMapping("my_wishlist") // 찜 리스트
	public String my_wishlist(Model model) {
		return "home/myshop/my_wishlist";
	}

	@GetMapping("orderinquiry_view") // 구매 상세내역
	public String orderinquiry_view(Model model) {
		return "home/myshop/orderinquiry_view";
	}

	@GetMapping("my_coupon") // 나의 쿠폰
	public String my_coupon(Model model) {
		return "home/myshop/my_coupon";
	}

	@GetMapping("my_mileage") // 나의 마일리지
	public String my_mileage(Model model) {
		return "home/myshop/my_mileage";
	}

	
	
	// 고객이 선택한 옵션들 토대로 가격들 종합해서 optionVo에 set.
	public OptionVo settingOptions(OptionVo optionVo, int work_price) {
		if (optionVo.getOption_size() == 0) { // 사이즈가 0번, 20.0cm x 35.7로 선택됐으면 36500원 추가됨
			optionVo.setOption_size_added_price(36500);
		} else { // 사이즈가 1번 - 25.0cm x 44.6cm 면 50300원 추가됨
			optionVo.setOption_size_added_price(50300);
		}

		if (optionVo.getOption_media() == 0) { // 미디어가 0번, canvas면
			optionVo.setOption_media_price_multiple(1.00);
		} else { // 미디어가 1번, fineArt면
			optionVo.setOption_media_price_multiple(1.05);
		}

		switch (optionVo.getOption_frame()) {
		    case 0:    // 캔버스판넬
		        optionVo.setOption_frame_added_price(0);
		        break;
		    case 1:    // 래핑캔버스
		        optionVo.setOption_frame_added_price(0);
		        break;
		    case 2:    // 띄움
		        optionVo.setOption_frame_added_price(4000);
		        break;
		    case 3:    // 원목 띄움
		        optionVo.setOption_frame_added_price(16000);
		        break;
		    case 4:    // 올림우드
		        optionVo.setOption_frame_added_price(20000);
		        break;
		    case 5:    // 앤틱D실버
		        optionVo.setOption_frame_added_price(0);
		        break;
		    case 6:    // 원목베이지
		        optionVo.setOption_frame_added_price(30000);
		        break;
		    case 7:    // 관화이트
		        optionVo.setOption_frame_added_price(28000);
		        break;
		    case 8:    // 관우드
		        optionVo.setOption_frame_added_price(28000);
		        break;
		    case 9:    // 관블랙
		        optionVo.setOption_frame_added_price(28000);
		        break;
		}

		if (optionVo.getOption_frame() == 5 || optionVo.getOption_frame() == 6) { // 프레임이 앤틱D실버(5), 원목베이지(6)일 때만 매트(여백) 선택 가능
			switch (optionVo.getOption_matt()) {
				case 0: // 없음
				optionVo.setOption_matt_added_price(0);
				break;
				case 1: // 2cm
				optionVo.setOption_matt_added_price(10000);
				break;
				case 2: // 3cm
				optionVo.setOption_matt_added_price(20000);
				break;
				case 3: // 6cm
				optionVo.setOption_matt_added_price(30000);
				break;
				case 4: // 11cm
				optionVo.setOption_matt_added_price(40000);
				break;
			}// switch
		} else {	// 프레임이 앤틱D실버(5), 원목베이지(6)가 아닐 때
			optionVo.setOption_matt_added_price(0);
		}
		
		// 옵션 다 선택한 후 가격 
		double option_selected_price = 
				// (작품 원가 + 사이즈 추가값) * 미디어 배수 + 나머지 옵션 추가값들
				((optionVo.getOption_size_added_price() + work_price) * optionVo.getOption_media_price_multiple()) +
				optionVo.getOption_frame_added_price()+
				optionVo.getOption_matt_added_price();
		
		int rounded_price = (int)(Math.floor(option_selected_price / 100.0) * 100.0);
		optionVo.setOption_selected_price(rounded_price);
		
		return optionVo;
	}// settingOptions()
	
}
