package com.kh.whereding.reservationBasket.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

@Repository
public class ReservationBasketDao {

	public ArrayList<ReservationBasket> selectBasketList(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("reservationBasketMapper.selectBasketList", userNo);
	}
	
	public ArrayList<Consulting> selectTimeInfo(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return (ArrayList)sqlSession.selectList("reservationBasketMapper.selectTimeInfo", map);
	}
	
	public ArrayList<Consulting> selectReservationList(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return (ArrayList)sqlSession.selectList("reservationBasketMapper.selectReservationList", map);
	}
	
	public int selectReservation(SqlSessionTemplate sqlSession, Consulting c) {
		return sqlSession.selectOne("reservationBasketMapper.selectConsulting", c);
	}
	
	public int insertReservation(SqlSessionTemplate sqlSession, Consulting c) {
		return sqlSession.insert("reservationBasketMapper.insertConsulting", c);
	}

	public int deleteReservation(SqlSessionTemplate sqlSession, Consulting c) {
		return sqlSession.delete("reservationBasketMapper.deleteConsulting", c);
	}
}