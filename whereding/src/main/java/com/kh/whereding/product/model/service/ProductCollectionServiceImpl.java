package com.kh.whereding.product.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.dao.ProductCollectionDao;
import com.kh.whereding.product.model.vo.ProductCollection;


@Service
public class ProductCollectionServiceImpl implements ProductCollectionService {
	
	@Autowired
	private ProductCollectionDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int selectListCount(String category) {
		return cDao.selectListCount(sqlSession, category);
	}

	@Override
	public ArrayList<ProductCollection> selectCollectionList(PageInfo pi, String category) {
		
		return cDao.selectCollectionList(sqlSession, pi ,category);
	}

	@Override
	public ProductCollection selectBoard(HashMap<String, String> map) {
		return cDao.selectBoard(sqlSession, map);

	}
	
	

}
