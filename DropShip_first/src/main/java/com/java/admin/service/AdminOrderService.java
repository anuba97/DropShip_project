package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.BoardEventVo;
import com.java.vo.Order_DetailVo;

public interface AdminOrderService {

	Map<String, Object> selectOrderList(int page);

	Order_DetailVo adminSelectOrderOne(int id);

	int updateOrderStatus(int id, int orderStatus);

	List<Order_DetailVo> adminMemberSelectOrder(int id);

	
	








	
	
	
}//BoardEventService
