package com.kh.whereding.common.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.dao.CommonDao;
import com.kh.whereding.common.model.vo.Great;

@Service
public class CommonServiceImpl implements CommonService{

	@Autowired
	private CommonDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int checkLike(Great g) {
		return cDao.checkLike(sqlSession,g);
	}

	@Override
	public int countLike(Great g) {
		return cDao.countLike(sqlSession,g);
	}

	@Override
	public int insertLike(Great g) {
		return cDao.insertLike(sqlSession,g);
	}

	@Override
	public int deleteLike(Great g) {
		return cDao.deleteLike(sqlSession,g);
	}
	
//	@Override
//	public int checkGiftStock(Basket b) {
//		return cDao.checkGiftStock(sqlSession, b);
//	}

	@Override
	public int checkBasket(Basket b) {
		return cDao.checkBasket(sqlSession, b);
	}

	@Override
	public int updateBasket(Basket b) {
		return cDao.updateBasket(sqlSession, b);
	}

	@Override
	public int insertBasket(Basket b) {
		return cDao.insertBasket(sqlSession, b);
	}

	@Override
	public int deleteBasket(Basket b) {
		return cDao.deleteBasket(sqlSession, b);
	}
}
