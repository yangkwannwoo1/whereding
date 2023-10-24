package com.kh.whereding.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		
		
		return sqlSession.selectOne("memberMapper.")
	}

}
