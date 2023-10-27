package com.kh.whereding.common.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.Great;

@Repository
public class CommonDao {

	public int checkLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.selectOne("commonMapper.checkLike", g);
	}

	public int insertLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.insert("commonMapper.insertLike", g);
	}

	public int deleteLike(SqlSessionTemplate sqlSession, Great g) {
		return sqlSession.delete("commonMapper.deleteLike", g);
	}
}
