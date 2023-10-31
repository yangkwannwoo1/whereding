package com.kh.whereding.basket.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.basket.model.dao.BasketDao;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;
import com.kh.whereding.gift.model.vo.Gift;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	private BasketDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public ArrayList<Basket> selectBasketList(String userNo) {
		return bDao.selectBasketList(sqlSession, userNo);
	}

	@Override
	public int deleteBasket(Basket b) {
		return bDao.deleteBasket(sqlSession, b);
	}

	@Override
	public ArrayList<Coupon> selectCouponList(String userNo) {
		return bDao.selectCouponList(sqlSession, userNo);
	}

	@Override
	public Gift selectbasketOne(String giftNo) {
		return bDao.selectbasketOne(sqlSession,giftNo );
	}
	
}
