package com.java.home.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.home.service.MemberService;
import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.MemberVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
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

	@PostMapping("cart") // 장바구니
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
		int member_id = 0;
		if(session.getAttribute("sessionMember_id") != null) {
			member_id = (int) session.getAttribute("sessionMember_id"); 
			List<Order_Detail_inquireVo> order_detail_list = shopservice.selectOrderDetailByMemberId(member_id);
			model.addAttribute("order_detail_list", order_detail_list);
		}
		return "home/myshop/orderinquiry";
	}
	
	@GetMapping("orderinquiry_view") // 구매 상세내역
	public String orderinquiry_view(String order_member_id, Model model) {
		int member_id = 0;
		int order_member_id_int = Integer.parseInt(order_member_id);	// 이전페이지인 orderinquiry에서 url로 전달받은 order_member_id(회원 주문번호) 가져오기
		
		// 회원 객체 가져옴 (아직 비회원 구매기능은 구현 안해놔서 로그인 했을때만 제대로 작동)
		if(session.getAttribute("sessionMember_id") != null) {
			member_id = (int) session.getAttribute("sessionMember_id"); 
			memberVo = memberservice.selectOne(member_id);
		} 
		
//		// 전달받았던 order_member_id_int(회원 주문번호)를 사용해서   회원 주문 객체(order_memberVo)를 통째로 가져옴.
//		Order_MemberVo order_memberVo = shopservice.selectOrderMemberOne_result(order_member_id_int);	// 회원 주문 객체. 회원 주문은 1개. 1개 주문에 대한 view니까.
//		
//		// work_id들이 담긴 리스트와 option_id들이 담긴 리스트를 저장한 map을 리턴받는 메소드. -> workVo와 optionVo들이 필요하기 때문. 중간과정.
//		Map<String, List<Integer>> orderDetail = shopservice.selectOrderDetail(order_member_id_int);	// orderDetail에 workIdList와 optionIdList가 담겨있음
//		
//		// 방금 받아온 optionIdList를 사용해서 OptionVo들이 담긴 리스트를 받아오기
//		List<OptionVo> optionVoList = shopservice.selectOptionList(orderDetail.get("optionIdList")); // 주문 상세에 대한 option객체
//		
//		// 이번엔 workIdList를 사용해서 WorkVo들이 담긴 리스트(workVoList) 받아오기 + 작가이름을 가져오기 위해 artistVo들이 담긴 리스트(artistVoList)도 맵으로 한번에 가져오기
//		Map<String, List<? extends Object>> workArtistVoMap = shopservice.selectMemberWorkList(orderDetail.get("workIdList")); 	
//			
//		
//		List<WorkVo> workVoList = (List<WorkVo>) workArtistVoMap.get("workVoList");
//		List<ArtistVo> artistVoList = (List<ArtistVo>) workArtistVoMap.get("artistVoList");
//		
//		model.addAttribute("memberVo", memberVo);
//		model.addAttribute("order_memberVo", order_memberVo);
//		model.addAttribute("workVoList", workVoList);
//		model.addAttribute("artistVoList", artistVoList);
//		model.addAttribute("optionVoList", optionVoList);
//		
//		model.addAttribute("optionVoListSize", optionVoList.size());
//		System.out.println("optionVoListSize : " + optionVoList.size());
//		System.out.println("workVoList : " + workVoList.get(0).getWork_img_url());
		
		
		
		
//		// 원래 내 무지성 join 방식.
		Order_Detail_inquire_viewVo order_Detail_inquire_viewVo = shopservice.selectOptionOneInquiryView(order_member_id_int);
		model.addAttribute("order_Detail_inquire_viewVo", order_Detail_inquire_viewVo);
		
		return "home/myshop/orderinquiry_view";		// view는 join을 5번 한 방식으로 한 경우 -> order_Detail_inquire_viewVo객체에 모든 5개 테이블의 정보가 한꺼번에 담겨서 model에도 한번만 담아서 프론트에 넘김
//		return "home/myshop/orderinquiry_view2";	// view2는 join을 최대한 적게 하는 방식 -> 대신 테이블별로 다 나눠져서 데이터를 넘김
	}
	

	@RequestMapping("order_form") // 작품 상세페이지 -> 작품 주문 페이지로 이동 
	public String order_form(String id, String opt1, String opt2, String opt3, String opt4, String opt5, @RequestParam("ct_qty[1654133092][]") String option_quantity , Model model) { // 작품 상세페이지에서 work_id, 작품option들을 전달받음
//		public String order_form(String id, OptionVo optionVo, @RequestParam("ct_qty[1654133092][]") String option_quantity , Model model) { // 작품 상세페이지에서 work_id, 작품option들을 전달받음
		
		optionVo.setOption_media(Integer.parseInt(opt1));	
		optionVo.setOption_frame(Integer.parseInt(opt2));
		optionVo.setOption_matt(Integer.parseInt(opt3));
		optionVo.setOption_size(Integer.parseInt(opt4));
		optionVo.setOption_mattier(Integer.parseInt(opt5));
		
		// 작품 정보 DB에서 가져오기
		int work_id = Integer.parseInt(id);
		workVo = shopservice.selectWorkOneOrder(work_id);
		
		// 고객(회원) 정보 DB에서 가져오기 (비회원은 정보 가져올 거 없음)
		if (session.getAttribute("sessionMember_id") != null) { // 회원일때만 member객체 가져오기
			int member_id = (int) session.getAttribute("sessionMember_id");
			memberVo = memberservice.selectOne(member_id); // memberVo엔 member_name, member_phone, member_zip,
															// member_road, member_address, member_email 만 사용해도 됨
		} 
		
		
		// 고객이 설정한 옵션들을 토대로 추가되는 가격을 set 후 그 set된 optionVo를 다시 리턴받음(order_form.jsp에서 Subtotal에 보여짐)
		int work_price = workVo.getWork_price();
		optionVo.setOption_quantity(Integer.parseInt(option_quantity));
		optionVo = settingOptions(optionVo, work_price);	// optionVo의 id는 DB에서 SEQ.nextval로 세팅해야. 
		
		
		// model에 작품, 회원, 옵션 정보들 담아서 order_form페이지에 전달할 수 있도록 하기
		model.addAttribute("workVo", workVo);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("optionVo", optionVo);

		return "home/myshop/order_form";
	}

	
	@RequestMapping("order_result") // order_form에서 '주문하기'버튼 클릭 후 구매완료 페이지로 이동
	public String order_result(Order_MemberVo order_memberVo, 
			String total_price, String work_id, Model model) {
		// order_form에서 order_result로 보내는 정보들 : optionVo(session으로받), delivery_name,phone,zip,road,address,request(order_memberVo로 받음), 
		//total_price, final_price, work_id 총 8개
		
		optionVo = (OptionVo) session.getAttribute("optionVo"); // order_form.jsp에서 <c:set var="optionVo" value="${optionVo}" scope="session"/> 이렇게 세션으로 set했었음
//		session.removeAttribute("optionVo");	// 세션 일단 지우면 안됨
		
		// 배송 테이블 값부터 먼저 insert(회원 주문 테이블에 배송고유번호가 외래키로 배송테이블을 참조하고 있어서 먼저 해줘야 가능)
		shopservice.insertDelivery();
		int delivery_id = shopservice.selectDeliverySeq();	// 주문건의 배송 고유번호(송장) 가져옴
		
		// 회원 주문 시 회원 주문 테이블(Order_Member)에 주문 저장
		int member_id = (int) session.getAttribute("sessionMember_id");
		shopservice.insertOrder_Member(member_id, delivery_id, order_memberVo);
		
		// 회원 주문 테이블(Order_Member)에 주문 저장 후 Order_Member_SEQ의 현재 번호(회원주문 고유번호) 가져옴
		int order_member_id = shopservice.selectOrderMemberSeq();	
		
		// 회원 주문 테이블의 정보 가져오기(order_result에 뿌려야 함. 회원주문id, 주문일시만 필요. 그러나 어디서 또 쓰일지 몰라서 일단 다 가져올 것.)
		order_memberVo = shopservice.selectOrderMemberOne_result(order_member_id);	// 함수명 이렇게 한 이유 : 회원 주문 객체 1명을 가져오는 일은 admin에서도 필요하기 때문에 함수명 같으면 안돼서 다르게 하려고 뒤에 언더바랑 언제 사용되는지(result-주문결과)를 적은 것.
		
		
		// 회원 주문상세 테이블(Order_Detail)에 주문 저장 "전에" optionVo의 id가 필요하기 때문에 optionVo를 Work_Option테이블에 저장
		shopservice.insertOption(optionVo);
		
		// optionVo를 옵션테이블에 저장 후 생긴 SEQ.currval(옵션 고유번호)를 가져오기
		int option_id = shopservice.selectOptionSeq();
		
		// 회원 주문상세 테이블(Order_Detail)에 주문 저장
		int total_price_int = Integer.parseInt(total_price);
		int work_id_int = Integer.parseInt(work_id);
		shopservice.insertOrder_Detail(order_member_id, work_id_int, option_id, total_price_int);	// final_price도 넣어야하지만 일단 할인 구현 안하고 있으므로 total_price와 같아서 final_price대신 total_price 또 사용할 것.
		
		
		
//		// 비회원 주문 테이블(Order_NonMember)에 주문 저장
//		shopservice.insertOrder_NonMember();
//		// 비회원 주문상세 테이블(Order_Detail_NonMember)에 주문 저장
//		shopservice.insertOrder_Detail_NonMember();
		
		
//		model.addAttribute("optionVo", optionVo);	// 옵션은 세션으로 set해놔서 필요없음
		model.addAttribute("workVo", workVo);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("order_memberVo",order_memberVo);
		
		return "home/myshop/order_result";
	}

	
	
	
	@GetMapping("my_wishlist") // 찜 리스트
	public String my_wishlist(Model model) {
		return "home/myshop/my_wishlist";
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
