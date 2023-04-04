package com.java.home.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.ShopMapper;
import com.java.vo.ArtistVo;
import com.java.vo.Cart_MemberVo;
import com.java.vo.DeliveryVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WorkVo;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper shopMapper;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;

	@Autowired
	Order_MemberVo order_memberVo;

	@Autowired
	Order_Detail_inquire_viewVo order_Detail_inquire_viewVo;

	//////////////////////// ↓ Work(작품) 관련 ↓ ///////////////////////////////

	// 작품 그림작품과 page 가져오기
	@Override
	public Map<String, Object> selectWorkList(int page) {
		HashMap<String, Object> map = pageMethodWork(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		List<WorkVo> list = shopMapper.selectWorkList(startRow, endRow);
		// System.out.println("ServiceImpl -- DB에서 받아온 list : "+list);
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}

	private HashMap<String, Object> pageMethodWork(int page) { // 작품 페이징 메소드
		HashMap<String, Object> map = new HashMap<>();

		int listCount = shopMapper.selectWorkCount(); // 작품 총 갯수
		int rowPerPage = 6; // 1페이지당 작품 갯수
		int pageList = 5; // 하단넘버링 갯수
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage)); // 최대페이지(하단넘버링 마지막번호)
		int startPage = ((page - 1) / pageList) * pageList + 1; // 하단넘버링1번째(현재보여지는 페이지에서)
		int endPage = maxPage; // 하단넘버링마지막(현재보여지는 페이지에서)
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		int startRow = (page - 1) * rowPerPage + 1; // 게시글 시작부분(현재 보여지는 페이지에서)
		int endRow = startRow + rowPerPage - 1; // 게시글 끝부분(현재 보여지는 페이지에서)

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}

	// 작품 베스트 가져오기
	@Override
	public List<WorkVo> selectWorkBest() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkBest();
		return list;
	}

	// 작품 new 가져오기
	@Override
	public List<WorkVo> selectWorkNew() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkNew();
		return list;
	}

	// 작품(구매창) 1개 가져오기
	@Override
	public WorkVo selectWorkBuy(int work_id) {
		workVo = shopMapper.selectWorkBuy(work_id);
		return workVo;
	}

	// 주문페이지용 작품 1개 가져오기(전체컬럼 아니고 일부만 가져옴)
	@Override
	public WorkVo selectWorkOneOrder(int id) {
		workVo = shopMapper.selectWorkOneOrder(id);
		return workVo;
	}

	// 작가의 작품들 가져오기
	@Override
	public List<WorkVo> selectWorkArtistAll(int artist_id) {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkArtistAll(artist_id);
		return list;
	}

	////////////////////////↓ Aritist(작가) 관련 ↓ ///////////////////////////////

	// 작가 전체 가져오기
	@Override
	public ArtistVo selectArtistAll(int artist_id) {
		artistVo = shopMapper.selectArtistAll(artist_id);
		return artistVo;
	}

	// 작가별 작가와 page 가져오기
	@Override
	public Map<String, Object> selectArtistList(int page) {
		HashMap<String, Object> map = pageMethodArtist(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		List<ArtistVo> list = shopMapper.selectArtistList(startRow, endRow);
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}

	private HashMap<String, Object> pageMethodArtist(int page) { // 작가 페이징 메소드
		HashMap<String, Object> map = new HashMap<>();

		int listCount = shopMapper.selectArtistCount(); // 작가 총 갯수
		int rowPerPage = 6; // 1페이지당 작품 갯수
		int pageList = 5; // 하단넘버링 갯수
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage)); // 최대페이지(하단넘버링 마지막번호)
		int startPage = ((page - 1) / pageList) * pageList + 1; // 하단넘버링1번째(현재보여지는 페이지에서)
		int endPage = maxPage; // 하단넘버링마지막(현재보여지는 페이지에서)
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		int startRow = (page - 1) * rowPerPage + 1; // 게시글 시작부분(현재 보여지는 페이지에서)
		int endRow = startRow + rowPerPage - 1; // 게시글 끝부분(현재 보여지는 페이지에서)

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}

	
	////////////////////////↓ order(주문) 관련 ↓ ///////////////////////////////
	
	// 회원 주문 시 회원 주문 테이블에 주문 정보 저장
	@Override
	public int insertOrder_Member(int member_id, int delivery_id, Order_MemberVo order_memberVo) {
		int successOrFail = shopMapper.insertOrder_Member2(member_id, delivery_id, order_memberVo);	// 왜 order_memberVo객체 자체론 안되지? 안돼서 getter로 일일이 할 수밖에..
		System.out.println("insertOrder_Member selectKey 성공여부 :  " + successOrFail); // selectKey의 결과로는 0(실패)또는 1(성공)만 나옴
		return order_memberVo.getId();	// selectKey 실행되면 원하는 결과물은 Vo의 인스턴스 변수에 set됨. 따라서 애초에 Vo를 반드시 전달해줘야.
	}

	@Override
	public int insertDelivery() {
		int delivery_id = shopMapper.insertDelivery();
		return delivery_id;
	}

	@Override
	public int insertDelivery2() {
		int delivery_id2 = shopMapper.insertDelivery2();
		return delivery_id2;
	}
	
	@Override
	public int selectDeliverySeq() {
		int delivery_id = shopMapper.selectDeliverySeq();
		return delivery_id;
	}

	@Override
	public int selectOrderMemberSeq() {
		int order_member_id = shopMapper.selectOrderMemberSeq();
		return order_member_id;
	}

	@Override
	public void insertOrder_Detail(int order_member_id, int work_id_int, int option_id, int total_price_int) {
		shopMapper.insertOrder_Detail(order_member_id, work_id_int, option_id, total_price_int);
	}

	// 작품상세페이지 or 장바구니에서 주문할 때 주문상세 DB에 저장
	@Override
	public void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,
			int total_price_int) {
		shopMapper.insertOrder_Details(order_member_id, workIdList, optionIdList, total_price_int);
	}
//	@Override
//	public void insertOrder_Details2(Map<String, Object> paramMap) {
//		shopMapper.insertOrder_Details2(paramMap);
//	}
	
	@Override
	public int insertOption(OptionVo optionVo) {
		int successOrFail = shopMapper.insertOption(optionVo); 
		System.out.println("insertOption 성공이냐 실패냐 : 	" + successOrFail);
		return optionVo.getId();	// 여기를 option_id로 하면 무조건 1만 나옴(왜..). insertOption실행하면 optionVo에 id부분에 currval이 세팅되어있으니까 이렇게 가져오는 것
	}

	@Override
	public int selectOptionSeq() {
		int option_id = shopMapper.selectOptionSeq();
		return option_id;
	}

	@Override
	public Order_MemberVo selectOrderMemberOne_result(int order_member_id) {
		order_memberVo = shopMapper.selectOrderMemberOne_result(order_member_id);
		return order_memberVo;
	}

	// 회원 마이페이지 주문조회 클릭시
	@Override
	public List<Order_Detail_inquireVo> selectOrderDetailByMemberId(int member_id, String fr_date, String to_date) {
		List<Order_Detail_inquireVo> order_detail_list = shopMapper.selectOrderDetailByMemberId(member_id, fr_date, to_date);
		return order_detail_list;
	}
	
	// 회원 마이페이지 주문조회 클릭시 총 주문 수 보여줄려고
	@Override
	public int selectOrder_member_count(int member_id, String fr_date, String to_date) {
		int order_member_count = shopMapper.selectOrder_member_count(member_id, fr_date, to_date);
		return order_member_count;
	}

	@Override
	public Order_Detail_inquire_viewVo selectOptionOneInquiryView(int order_member_id_int) {
		order_Detail_inquire_viewVo = shopMapper.selectOptionOneInquiryView(order_member_id_int);
		return order_Detail_inquire_viewVo;
	}

	// 구매상세 내역 조회시 work_id들이 담긴 리스트와 option_id들이 담긴 리스트를 저장한 map을 리턴받는 메소드. ->
	// workVo와 optionVo들이 필요하기 때문.
	@Override
	public Map<String, List<Integer>> selectOrderDetail(int order_member_id) {
		// 회원 주문 상세 객체 리스트를 받아옴. 회원 주문 고유번호 하나에 여러 주문 상세 값이 있을 수 있으니까 list로 받아와야.
		// 회원 주문 상세에선 딱히 사용할 게 없음. 다만 나중에 workVo와 optionVo들이 결국 필요하기 때문에
		// 그 둘을 가져올 수 있는 work_id와 option_id만 order_DetailVo리스트에 담기게 됨..
		List<Order_DetailVo> Order_DetailVoList = shopMapper.selectOrderDetail(order_member_id); // 얘는 결과물이 아니고 중간에 사용할
																									// 용도

		List<Integer> workIdList = new ArrayList();
		List<Integer> optionIdList = new ArrayList();

		Map<String, List<Integer>> map = new HashMap<>();

		for (Order_DetailVo order_DetailVo : Order_DetailVoList) {
			workIdList.add(order_DetailVo.getWork_id()); // workID를 담는 리스트에다가 아까 받아온 order_DetailVo(회원주문객체)에 담긴 work_id를
															// 담음.
			optionIdList.add(order_DetailVo.getOption_id()); // optionId를 담는 리스트에다가 artist_id들을 담음
		}

		map.put("workIdList", workIdList);
		map.put("optionIdList", optionIdList);
		return map;
	}

	// 회원 주문 상세용 option객체들 가져오기
	@Override
	public List<OptionVo> selectOptionList(List<Integer> optionIdList) {
		List<OptionVo> optionVoList = shopMapper.selectOptionList(optionIdList);
		return optionVoList; // 주문 상세에 대한 option객체들 담김
	}

	// 회원 주문 상세용 work객체들 가져오기 + artist 객체들 가져오기
	@Override
	public Map<String, List<? extends Object>> selectMemberWorkList(List<Integer> workIdList) {
		
		List<WorkVo> workVoList = shopMapper.selectMemberWorkList(workIdList);

		// 작가 한글이름도 order_inquiry_view.jsp에 필요. 근데 작가는 작품(work)이랑만 연결되어있음.
		// 따라서 work를 통해 artist를 조회할 수 밖에 없고,
		// artist_korean_name을 알려면 artist테이블의 id가 필요.
		List<Integer> artistIdList = new ArrayList<>(); // artist_id들을 담는 리스트 선언

		for (WorkVo workVo : workVoList) {
			artistIdList.add(workVo.getArtist_id()); // artistIdList에 workVo에 있는 artist_id들을 삽입
		}

		// artist_id들이 담긴 list를 사용해서 artistVo들을 가져와서 artistVoList에 담음
		List<ArtistVo> artistVoList = shopMapper.selectArtistOrderList(artistIdList);

		Map<String, List<? extends Object>> workArtistVoMap = new HashMap<>();

		workArtistVoMap.put("workVoList", workVoList); // 결국 map에 작품(work) 객체들, 작가(artist) 객체들을 담아서 보냄
		workArtistVoMap.put("artistVoList", artistVoList);

		return workArtistVoMap; // 주문 상세에 대한 work, artist 객체들 담김
	}

	@Override
	public void insertCart_Member(int member_id, int work_id_int, int option_id) {
		shopMapper.insertCart_Member(member_id, work_id_int, option_id);
	}

	
	@Override
	public Map<String, List<Integer>> selectCart_MemberList(int member_id) {
		List<Cart_MemberVo> cart_MemberVoList = shopMapper.selectCart_MemberList(member_id);
		System.out.println("장바구니 객체 개수 : " + cart_MemberVoList.size());
		
		List<Integer> workIdList = new ArrayList<>();
		List<Integer> optionIdList = new ArrayList<>();
		Map<String, List<Integer>> map = new HashMap<>();
		
		System.out.println("optionIdList 비어있나 확인용 : " + optionIdList);
		
		for(Cart_MemberVo cart_MemberVo : cart_MemberVoList) {
			workIdList.add(cart_MemberVo.getWork_id());
			optionIdList.add(cart_MemberVo.getOption_id());
		}
		map.put("workIdList" , workIdList);
		map.put("optionIdList" , optionIdList);
		
		return map;
	}

	@Override
	public void deleteCart_member(int member_id, List<Integer> optionIdList) {
		shopMapper.deleteCart_member(member_id, optionIdList);
		
	}

	

	

	

	

	

}
