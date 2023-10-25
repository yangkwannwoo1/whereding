package com.kh.whereding.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.member.model.vo.Member;

@Repository
public class AdminDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		
		return sqlSession.selectOne("memberMapper.selectListCount");
	}
	
	public ArrayList<Member> selectList(PageInfo pi,SqlSessionTemplate sqlSession){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectListCount", null, rowBounds);
	}
	

}
