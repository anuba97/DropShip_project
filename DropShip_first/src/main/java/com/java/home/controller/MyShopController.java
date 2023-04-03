package com.java.home.controller;

import java.util.ArrayList;
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
import com.java.vo.DeliveryVo;
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
	
	@Autowired
	DeliveryVo deliveryVo; 

	@PostMapping("cart") // 장바구니 DB에 저장 (주문과 비슷)
	public String cartPost(String work_id, String opt1, String opt2, String opt3, 
			String opt4, String opt5, @RequestParam("ct_qty[1654133092][]") String option_quantity, Model model) {
		
		// 변수 초기화
		int member_id = 1;
		int option_id = 1;
		int work_id_int = 1;
		
		//////////------------- 선택한 작품과 옵션을 장바구니 DB에 저장하는 과정 ---------//////////
		optionVo.setOption_media(Integer.parseInt(opt1));	
		optionVo.setOption_frame(Integer.parseInt(opt2));
		optionVo.setOption_matt(Integer.parseInt(opt3));
		optionVo.setOption_size(Integer.parseInt(opt4));
		optionVo.setOption_mattier(Integer.parseInt(opt5));
		
		if (session.getAttribute("sessionMember_id") != null) { // 일단 회원일때만 장바구니 넣기 가능
			member_id = (int) session.getAttribute("sessionMember_id");
			
			// 고객이 설정한 옵션들을 토대로 추가되는 가격들을 set 후 그 set된 optionVo를 다시 리턴받음
			int work_price = workVo.getWork_price();
			optionVo.setOption_quantity(Integer.parseInt(option_quantity));
			optionVo = settingOptions(optionVo, work_price); 
			
			option_id = shopservice.insertOption(optionVo);	// optionVo의 안의 값들을 DB work_option 테이블에 저장 후 시퀀스로 생성된 ID를 반환받음
			work_id_int = Integer.parseInt(work_id);
			
			// 회원 장바구니 테이블(Cart_Member)에 데이터 insert
			shopservice.insertCart_Member(member_id, work_id_int, option_id);
		} 
		//////////------------- 선택한 작품과 옵션을 장바구니 DB에 저장하는 과정 ---------//////////
		return "redirect:cart";
	}
	
	// 장바구니 페이지 보여줄 때
	@GetMapping("cart")
	public String cartGet(Model model) {
        ////////------------- DB에서 정보들을 가져오는 과정 ----------------------//////////
		int member_id = 1;
		if (session.getAttribute("sessionMember_id") != null) { // 일단 회원일때만 장바구니 넣기 가능
			
			member_id = (int) session.getAttribute("sessionMember_id");
			
			// cart_MemberMap엔 workIdList(int)와 optionIdList(int)를 리턴받음.
			Map<String, List<Integer>> cart_MemberMap = shopservice.selectCart_MemberList(member_id);
			
			// 리턴받았던 work와 option 각각의 id들을 토대로 optionVo들과 workVo들과 artistVo들이 담긴 List를 가져옴
			List<OptionVo> optionVoList = shopservice.selectOptionList(cart_MemberMap.get("optionIdList"));
			Map<String, List<? extends Object>> workArtistVoMap= shopservice.selectMemberWorkList(cart_MemberMap.get("workIdList"));
		//////////------------- DB에서 정보들을 가져오는 과정 ----------------------//////////
			
	        //////////------------- cart.jsp에 뿌려주기 위한 과정 ---------------------//////////
			List<WorkVo> workVoList = (List<WorkVo>) workArtistVoMap.get("workVoList");
			List<ArtistVo> artistVoList = (List<ArtistVo>) workArtistVoMap.get("artistVoList");
			
			
			int cart_total_price = 0;
			for(OptionVo optionVo : optionVoList) {
				cart_total_price += optionVo.getOption_selected_price() * optionVo.getOption_quantity();
			}
			
			model.addAttribute("cart_total_price", cart_total_price);
			model.addAttribute("workVoList", workVoList);
			model.addAttribute("artistVoList", artistVoList);
			model.addAttribute("optionVoList", optionVoList);
	        //////////------------- cart.jsp에 뿌려주기 위한 과정 ----------------------///////////
		} 
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
		if(session.getAttribute("sessionMember_id") != null) {	// 로그인 돼있을 때만 일단 구현
			member_id = (int) session.getAttribute("sessionMember_id"); 
			List<Order_Detail_inquireVo> order_detail_list = shopservice.selectOrderDetailByMemberId(member_id);
			model.addAttribute("order_detail_list", order_detail_list);
		}
		return "home/myshop/orderinquiry";
	}
	
	@GetMapping("orderinquiry_view") // 구매 상세내역
	public String orderinquiry_view(String order_member_id, Model model) {
		int member_id = 0;
		int order_member_id_int = Integer.parseInt(order_member_id);	// 이전페이지인 orderinquiry에서 url로 전달받은 order_member_id(회원 주문 고유번호) 가져오기
		
		// 회원 객체 가져옴 (아직 비회원 구매기능은 구현 안해놔서 로그인 했을때만 제대로 작동)
		if(session.getAttribute("sessionMember_id") != null) {
			member_id = (int) session.getAttribute("sessionMember_id"); 
			memberVo = memberservice.selectOne(member_id);
		} 
		
		// 전달받았던 order_member_id_int(회원 주문 고유번호)를 사용해서   회원 주문 객체(order_memberVo)를 통째로 가져옴.
		Order_MemberVo order_memberVo = shopservice.selectOrderMemberOne_result(order_member_id_int);	// 회원 주문 객체. 회원 주문은 1개. 1개 주문에 대한 view니까.
		
		// work_id들이 담긴 리스트와 option_id들이 담긴 리스트를 저장한 map을 리턴받는 메소드. -> workVo와 optionVo들이 필요하기 때문. 중간과정.
		Map<String, List<Integer>> orderDetail = shopservice.selectOrderDetail(order_member_id_int);	// orderDetail에 workIdList와 optionIdList가 담겨있음
		
		// 방금 받아온 optionIdList를 사용해서 OptionVo들이 담긴 리스트를 받아오기
		List<OptionVo> optionVoList = shopservice.selectOptionList(orderDetail.get("optionIdList")); // 주문 상세에 대한 option객체
		
		// 이번엔 workIdList를 사용해서 WorkVo들이 담긴 리스트(workVoList) 받아오기 + 작가이름을 가져오기 위해 artistVo들이 담긴 리스트(artistVoList)도 맵으로 한번에 가져오기
		Map<String, List<? extends Object>> workArtistVoMap = shopservice.selectMemberWorkList(orderDetail.get("workIdList")); 	
			
		
		List<WorkVo> workVoList = (List<WorkVo>) workArtistVoMap.get("workVoList");
		List<ArtistVo> artistVoList = (List<ArtistVo>) workArtistVoMap.get("artistVoList");
		
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("order_memberVo", order_memberVo);
		model.addAttribute("workVoList", workVoList);
		model.addAttribute("artistVoList", artistVoList);
		model.addAttribute("optionVoList", optionVoList);
		
		model.addAttribute("optionVoListSize", optionVoList.size());
		
		
		
		
//		// 원래 내 무지성 join 방식.
		Order_Detail_inquire_viewVo order_Detail_inquire_viewVo = shopservice.selectOptionOneInquiryView(order_member_id_int);
		model.addAttribute("order_Detail_inquire_viewVo", order_Detail_inquire_viewVo);
		
//		return "home/myshop/orderinquiry_view";		// view는 join을 5번 한 방식으로 한 경우 -> order_Detail_inquire_viewVo객체에 모든 5개 테이블의 정보가 한꺼번에 담겨서 model에도 한번만 담아서 프론트에 넘김
		return "home/myshop/orderinquiry_view2";	// view2는 join을 최대한 적게 하는 방식 -> 대신 테이블별로 다 나눠져서 데이터를 넘김
	}
	
	@RequestMapping("order_form") // 작품 상세페이지 or 장바구니 페이지에서 -> 작품 주문 페이지로 이동. DB에 저장하는 건 없음. DB저장은 실제로 주문할 때만.
	public String order_form(@RequestParam(name = "work_id", required = false) String work_id, @RequestParam(name = "opt1", required = false) String option_media, 
			@RequestParam(name = "opt2", required = false) String option_frame, @RequestParam(name = "opt3", required = false) String option_matt, 
			@RequestParam(name = "opt4", required = false) String option_size, @RequestParam(name = "opt5", required = false) String option_mattier, 
			@RequestParam(name = "ct_qty[1654133092][]", required = false) String option_quantity,	// 여기까진 작품 상세페이지에서 주문페이지로 이동할 때 넘겨받는 인자들.
			
			@RequestParam(name = "selectedWorksId", required = false) List<Integer> work_id_list_from_cart, 
			@RequestParam(name = "selectedOptionsId", required = false) List<Integer> option_id_list_from_cart, 
			@RequestParam(name = "option_quantity[]", required = false) String option_quantity_list, 
			Model model) { // 여기까진 장바구니 페이지에서 주문페이지로 이동할 때 넘겨받는 인자들. 다 required=false여야.
		
		// 변수들 초기화
		List<Integer> workIdList = new ArrayList<>();
		List<Integer> optionIdList = new ArrayList<>();
		List<WorkVo> workVoList = new ArrayList<>();
		List<OptionVo> optionVoList = new ArrayList<>();
		int member_id = 1;
		String fromWhatPage = "";
		
		
		// 주문정보에 들어갈 고객(회원) 정보 DB에서 가져오기 (비회원은 정보 가져올 거 없음)
		if (session.getAttribute("sessionMember_id") != null) { // 회원일때만 member객체 가져오기
			member_id = (int) session.getAttribute("sessionMember_id");
			memberVo = memberservice.selectOne(member_id); // memberVo엔 member_name, member_phone, member_zip,
		} 
		
		//-------------------  작품 및 옵션 정보들을 이전페이지(painting_item.jsp 또는 cart.jsp)와 DB에서 가져오기 ---------------//
		if(work_id_list_from_cart != null) { // 1. 장바구니 페이지에서 넘어왔을 때
			
			workIdList = work_id_list_from_cart;
			Map<String, List<? extends Object>> workArtistVoMap = shopservice.selectMemberWorkList(workIdList); // workArtistVoMap에 workVoList와 artistVoList가 담겨있음
			workVoList = (List<WorkVo>) workArtistVoMap.get("workVoList"); // 여러개 주문 할 수 있으니까 List로 보내서 front페이지에서 forEach사용해야.
			
			optionIdList = option_id_list_from_cart;	
			optionVoList = shopservice.selectOptionList(optionIdList);
			
		} else {	// 2. 작품 상세페이지에서 넘어왔을 때. 작품이 1개.
			int work_id_int = Integer.parseInt(work_id);
			workIdList.add(work_id_int);
			
			optionVo.setOption_media(Integer.parseInt(option_media));
			optionVo.setOption_frame(Integer.parseInt(option_frame));
			optionVo.setOption_matt(Integer.parseInt(option_matt));
			optionVo.setOption_size(Integer.parseInt(option_size));
			optionVo.setOption_mattier(Integer.parseInt(option_mattier));
			
			// 작품 정보 DB에서 가져와서 workVoList에 담기
			workVo = shopservice.selectWorkOneOrder(work_id_int);
			workVoList.add(workVo);
			
			// 고객이 설정한 옵션들을 토대로 추가되는 가격을 set 후 그 set된 optionVo를 다시 리턴받음(order_form.jsp에서 Subtotal에 보여짐)
			int work_price = workVo.getWork_price();
			optionVo.setOption_quantity(Integer.parseInt(option_quantity));
			optionVo = settingOptions(optionVo, work_price);	// optionVo의 id는 DB에서 SEQ.nextval로 세팅해야. 
			optionVoList.add(optionVo);
			
			fromWhatPage = "painting_item";
			
		}
		//-------------------  작품 및 옵션 정보들 이전페이지(painting_item.jsp 또는 cart.jsp)와 DB에서 가져오기 ---------------//
		
		int total_price = 0;
		for(OptionVo optionVo : optionVoList) {
			total_price += optionVo.getOption_selected_price() * optionVo.getOption_quantity();
		}
		
		
		// model에 작품, 회원, 옵션 정보들 담아서 order_form페이지에 전달 하기
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("workVoList", workVoList);
		model.addAttribute("optionVoList", optionVoList);
		model.addAttribute("total_price", total_price);
		model.addAttribute("workIdList", workIdList);
		model.addAttribute("optionIdList", optionIdList);
		model.addAttribute("fromWhatPage", fromWhatPage);
		
		System.out.println("order_form에서 확인해보는 optionIdList의 크기 : " + optionIdList.size());
		
		return "home/myshop/order_form";
	}

	
	@PostMapping("order_result") // order_form에서 '주문하기'버튼 클릭 후 주문작업(DB에 정보 집어넣기). 
	public String order_resultPost(Order_MemberVo order_memberVo, String fromWhatPage,
			String total_price, String work_id, Model model) {
		// order_form에서 order_result로 보내는 정보들 : optionVo(session으로받), delivery_name,phone,zip,road,address,request(order_memberVo로 받음), 
		//total_price, final_price, work_id 총 8개
		
		int option_id = 1; // 변수 초기화용.
		
		int member_id = (int) session.getAttribute("sessionMember_id");
		
		// 작품 상세페이지에서 넘어온 경우에만 optionVo(1개)를 DB에 저장하기. 
		if(fromWhatPage.equals("painting_item")) {    
			// 작품 상세페이지에서 order_result로 넘어온 경우 optionVo가 order_form을 통해 만들어져있긴 한데 DB에 저장은 안돼있음. DB에 저장해야.  // 장바구니를 통해서 1개 이상의 작품을 구매하는 경우엔 이미 cart.jsp에서 optionVo들을 DB에 저장해놨음. 
			optionVo = (OptionVo) session.getAttribute("optionVo"); // order_form.jsp에서 <c:set var="optionVo" value="${optionVo}" scope="session"/> 이렇게 세션으로 set했었음
			
			// 회원 주문상세 테이블(Order_Detail)에 주문 저장하기 "전에" 
			// optionVo의 id가 필요하기 때문에 optionVo를 Work_Option테이블에 저장
			option_id = shopservice.insertOption(optionVo);
			System.out.println("painting_item에서 넘어오고 저장한 optionVo의 option_id : " + option_id);
			session.removeAttribute("optionVo");	// optionVo를 DB에 저장했으니까 session은 지우기
		} 
		
		// 배송 테이블 값부터 먼저 insert(회원 주문 테이블에 배송고유번호가 외래키로 배송테이블을 참조하고 있어서 얘 먼저 해줘야 가능)후 delivery_id 리턴 받음
		shopservice.insertDelivery();
		int delivery_id2 = shopservice.insertDelivery2();
		System.out.println("송장번호 한꺼번에 : "+ delivery_id2);
		
		
		int delivery_id = shopservice.selectDeliverySeq();
//		System.out.println("만들어진 송장번호1111 : " + delivery_id);
		
		// 회원 주문 테이블(Order_Member)DB에 주문 저장!! 직후 Order_Member_SEQ의 현재 번호(회원주문 고유번호) 리턴받음
		int order_member_id = shopservice.insertOrder_Member(member_id, delivery_id, order_memberVo);	// order_memberVo는 이전페이지에서 받아옴
		System.out.println("주문 저장 완료           !!!! ");
		
		// 회원 주문상세 테이블(Order_Detail)에 주문 저장
		int total_price_int = Integer.parseInt(total_price);
		
		List<Integer> workIdList = (List<Integer>) session.getAttribute("workIdList");
		List<Integer> optionIdList = (List<Integer>) session.getAttribute("optionIdList");
		
		
		if(fromWhatPage.equals("painting_item")) { // 작품상세페이지에서 넘어온 경우라면 따로 optionVo의 id를 가져와줘야함.    
			optionIdList.add(option_id);
		} 
		
		for(int i = 0; i < workIdList.size(); i++) {
			shopservice.insertOrder_Detail(order_member_id, workIdList.get(i), optionIdList.get(i), total_price_int);
		}
		
		return "redirect:order_result?order_member_id="+order_member_id;
	}

	@GetMapping("order_result")	// 주문작업 완료 후(-PostMapping으로 한 order_result. DB에 집어넣기) 결과물 보여주기(DB에서 다시 가져오기)
	public String order_resultGet(int order_member_id, Model model) {
		
		// 회원 주문 테이블의 정보 가져오기(order_result에 뿌려야 함. 회원주문id, 주문일시만 필요. 그러나 어디서 또 쓰일지 몰라서 일단 다 가져올 것.)
		Order_MemberVo order_memberVo = shopservice.selectOrderMemberOne_result(order_member_id);	// 함수명 이렇게 한 이유 : 회원 주문 객체 1명을 가져오는 일은 admin에서도 필요하기 때문에 함수명 같으면 안돼서 다르게 하려고 뒤에 언더바랑 언제 사용되는지(result-주문결과)를 적은 것.
		
		// 해당 주문건의 회원 주문 상세 테이블 가져오기
		Map<String, List<Integer>> orderDetail = shopservice.selectOrderDetail(order_member_id);	// optionIdList와 workIdList가 담겨있음.
		System.out.println("회원 주문 상세 입력 완료1!!!!!");
		
		
		// 옵션 객체들 DB에서 가져오기
		List<OptionVo> optionVoList = shopservice.selectOptionList(orderDetail.get("optionIdList"));
		// 작품 객체들과 아티스트 객체들 DB에서 가져오기
		Map<String, List<? extends Object>> workArtistMap = shopservice.selectMemberWorkList(orderDetail.get("workIdList"));
		List<WorkVo> workVoList = (List<WorkVo>) workArtistMap.get("workVoList");
		
		int order_total_price = 0;
		for(OptionVo optionVo : optionVoList) {
			order_total_price += optionVo.getOption_selected_price() * optionVo.getOption_quantity();
		}
		
		
//		// 회원 객체 가져옴 (아직 비회원 구매기능은 구현 안해놔서 로그인 했을때만 제대로 작동)
//		if(session.getAttribute("sessionMember_id") != null) {
//			member_id = (int) session.getAttribute("sessionMember_id"); 
//			memberVo = memberservice.selectOne(member_id);
//		} 
		
		model.addAttribute("order_total_price", order_total_price);
		model.addAttribute("memberVo", memberVo);
		model.addAttribute("workVoList", workVoList);
		model.addAttribute("optionVoList", optionVoList);	
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
