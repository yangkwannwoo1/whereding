package com.kh.whereding.reservationBasket.model.service;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.member.model.vo.Consulting;
import com.kh.whereding.reservationBasket.model.dao.ReservationBasketDao;
import com.kh.whereding.reservationBasket.model.vo.ReservationBasket;

@Service
public class ReservationBasketServiceImpl implements ReservationBasketService {

	@Autowired
	private ReservationBasketDao rDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public ArrayList<ReservationBasket> selectBasketList(String userNo) {
		return rDao.selectBasketList(sqlSession, userNo);
	}

	@Override
	public ArrayList<Consulting> selectTimeInfo(HashMap<String, String> map) {
		return rDao.selectTimeInfo(sqlSession, map);
	}

	@Override
	public ArrayList<Consulting> selectReservationList(HashMap<String, String> map) {
		return rDao.selectReservationList(sqlSession, map);
	}

	@Override
	public int selectReservation(Consulting c) {
		return rDao.selectReservation(sqlSession, c);
	}

	@Override
	public int insertReservation(Consulting c) {
		int result = rDao.insertReservation(sqlSession, c);
		System.out.println("insert " + result);
		
		return result;
	}
	
	@Override
	public int deleteReservation(Consulting c) {
		
		int result = rDao.deleteReservation(sqlSession, c);
		System.out.println("delete " + result);
		
		return result;
	}
	
}
