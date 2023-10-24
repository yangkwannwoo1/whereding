package com.kh.whereding.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.Attachment;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.Hall;

@Repository
public class HallDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		return sqlSession.selectOne("hallMapper.selectListCount");
	}
	
	public ArrayList<Hall> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
	
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("hallMapper.selectList", null, rowBounds);
		
	}
	
	public int insertHall(Hall h,SqlSessionTemplate sqlSession) {
		
		return sqlSession.insert("hallMapper.insertHall", h);
	}
	
	public int insertTag(HashTag t, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("hallMapper.insertTag", t);
	}
	
	public int insertFile(Attachment a, SqlSessionTemplate sqlSession) {
		return sqlSession.insert("hallMapper.insertFile", a);
	}

}
