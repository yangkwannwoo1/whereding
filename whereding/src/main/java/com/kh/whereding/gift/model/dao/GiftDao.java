package com.kh.whereding.gift.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Basket;
import com.kh.whereding.gift.model.vo.Gift;

@Repository
public class GiftDao {

	public ArrayList<Gift> selectGiftList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("giftMapper.selectGiftList");
	}
	
	public ArrayList<Basket> selectBasketList(SqlSessionTemplate sqlSession, String userNo){
		return (ArrayList)sqlSession.selectList("basketMapper.selectBasketList", userNo);
	}
	
	
}
