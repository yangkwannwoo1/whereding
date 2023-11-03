package com.kh.whereding.reservationBasket.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	
}
