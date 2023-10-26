package com.kh.whereding.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.ProductCollectionReview;

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
	
	public ProductCollection selectBoard(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("productCollectionMapper.selectBoard", map);
	}
	
	public ArrayList<ProductCollectionReview> selectReviewList(SqlSessionTemplate sqlSession, String cno){
		return (ArrayList)sqlSession.selectList("productCollectionMapper.selectReviewList", cno);
	}
	
	public int insertProductCollection(ProductCollection c,SqlSessionTemplate sqlSession) {
		return sqlSession.insert("productCollectionMapper.insertProductCollection", c);
	}
	
	public int insertTag(HashTag t, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("productCollectionMapper.insertTag", t);
	}
	
	public int insertFile(Attachment a, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("productCollectionMapper.insertFile", a);
	}

}
