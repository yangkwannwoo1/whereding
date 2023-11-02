package com.kh.whereding.basket.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;
import com.kh.whereding.gift.model.vo.Gift;

@Repository
public class BasketDao {

	public ArrayList<Basket> selectBasketList(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("basketMapper.selectBasketList", userNo);
	}

	public int deleteBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.delete("basketMapper.deleteBasket", b);
	}
	
	public ArrayList<Coupon> selectCouponList(SqlSessionTemplate sqlSession, String userNo) {
		return (ArrayList)sqlSession.selectList("basketMapper.selectCouponList", userNo);
	}

	public Gift selectbasketOne(SqlSessionTemplate sqlSession, String giftNo) {
		return sqlSession.selectOne("basketMapper.selectbasketOne", giftNo);
	}

	public int deleteOrderBasket(SqlSessionTemplate sqlSession, Gift gt) {
		return sqlSession.delete("basketMapper.deleteOrderBasket", gt);
	}

	public int insertGiftHistiry(SqlSessionTemplate sqlSession, Gift gt) {
		return sqlSession.insert("basketMapper.insertGiftHistiry", gt);
	}

	public int insertPayment(SqlSessionTemplate sqlSession, Gift gt) {
		return sqlSession.insert("basketMapper.insertPayment", gt);
	}
}
