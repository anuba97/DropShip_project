package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardEventVo;
import com.java.vo.Order_DetailVo;

@Mapper
public interface AdminOrderMapper {

	List<BoardEventVo> selectOrderList(int startRow, int endRow);

	int selectCount();

	Order_DetailVo adminSelectOrderOne(int id);

	int updateOrderStatus(int id, int orderStatus);

	List<Order_DetailVo> adminMemberSelectOrder(int id);



	

}// AdminMemberMapper