package com.kh.whereding.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.ProductCollection;

@Repository
public class ProductCollectionDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession, String category) {
		
		return sqlSession.selectOne("productCollectionMapper.selectListCount", category);
	}
	
	public ArrayList<ProductCollection> selectCollectionList(SqlSessionTemplate sqlSession, PageInfo pi, String category) {
	
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("productCollectionMapper.selectList", category, rowBounds);
		
	}

}