package com.kh.whereding.gift.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.gift.model.vo.Gift;
import com.kh.whereding.gift.model.vo.GiftCategory;

@Repository
public class GiftDao {

	public ArrayList<Gift> selectGiftList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("giftMapper.selectGiftList", null, rowBounds);
	}
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("giftMapper.selectListCount");
	}
	
	public ArrayList<GiftCategory> selectCategory(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("giftMapper.selectCategoryList");
	}
	
}
