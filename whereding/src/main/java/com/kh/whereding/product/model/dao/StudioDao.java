package com.kh.whereding.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.PageInfo;
import com.kh.whereding.product.model.vo.Studio;

@Repository
public class StudioDao {

	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("studioMapper.selectListCount");
	}
	
	
	public ArrayList<Studio> selectStudioList(SqlSessionTemplate sqlSession, PageInfo pi){
		return (ArrayList)sqlSession.selectList("studioMapper.selectList");
	} 
}
