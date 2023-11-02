package com.kh.whereding.product.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.dao.HallDao;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.ProductCollectionReview;


@Service
public class HallServiceImpl implements HallService {
	
	@Autowired
	private HallDao hDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount() {
		return hDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Hall> selectList(PageInfo pi) {
		
		return hDao.selectList(sqlSession, pi);
	}

	@Override
	public int insertHall(Hall h) {
		
		return hDao.insertHall(h, sqlSession);
	}

	@Override
	public int insertFile(Attachment a) {
		return hDao.insertFile(a, sqlSession);
	}

	@Override
	public int insertTag(HashTag t) {
		return hDao.insertTag(t, sqlSession);
	}

	@Override
	public Hall selectBoard(String hno) {
		return hDao.selectBoard(hno, sqlSession);
	}

	@Override
	public int deletehall(String hno) {
		return hDao.deletehall(hno, sqlSession);
	}

	@Override
	public ArrayList<ProductCollectionReview> selectReviewList(String hno) {
		return hDao.selectReviewList(hno, sqlSession);
	}

}
