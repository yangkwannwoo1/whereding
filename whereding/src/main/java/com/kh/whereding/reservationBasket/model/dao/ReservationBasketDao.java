package com.kh.whereding.reservationBasket.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

@Repository
public class ReservationBasketDao {

	public ArrayList<ReservationBasket> selectBasketList(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("reservationBasketMapper.selectBasketList", userNo);
	}
}