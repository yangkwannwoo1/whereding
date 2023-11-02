package com.kh.whereding.common.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.vo.Great;

@Repository
public class CommonDao {

	public int countLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.selectOne("commonMapper.countLike", g);
	}

	public int checkLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.selectOne("commonMapper.checkLike", g);
	}

	public int insertLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.insert("commonMapper.insertLike", g);
	}

	public int deleteLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.delete("commonMapper.deleteLike", g);
	}
	
//	public int checkGiftStock(SqlSessionTemplate sqlSession, Basket b) {
//		return sqlSession.selectOne("commonMapper.checkGiftStock", b);
//	}
	
	public int checkBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.selectOne("commonMapper.checkBasket", b);
	}

	public int checkBasketCount(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.selectOne("commonMapper.checkBasketCount", b);
	}

	public int updateBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.update("commonMapper.updateBasket", b);
	}
	
	public int insertBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.insert("commonMapper.insertBasket", b);
	}
	
	public int deleteBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.delete("commonMapper.deleteBasket", b);
	}

	public int checkPBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.selectOne("commonMapper.checkPBasket", b);
	}
	
	public int insertPBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.insert("commonMapper.insertPBasket", b);
	}
	
	public int deletePBasket(SqlSessionTemplate sqlSession, Basket b) {
		return sqlSession.delete("commonMapper.deletePBasket", b);
	}
}
