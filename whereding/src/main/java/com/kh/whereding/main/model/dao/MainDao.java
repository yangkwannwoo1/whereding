package com.kh.whereding.main.model.dao;

import java.lang.reflect.Array;
import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.product.model.vo.Hall;

@Repository
public class MainDao {
	
	public ArrayList<HashTag> selectTagList(SqlSessionTemplate sqlSession, String category){
		return (ArrayList)sqlSession.selectList("mainMapper.selectTagList", category);
	}
	
	public ArrayList<Hall> selectHallList(SqlSessionTemplate sqlSession, SearchHall sh){
		return (ArrayList)sqlSession.selectList("mainMapper.selectHallList", sh);
	}

}
