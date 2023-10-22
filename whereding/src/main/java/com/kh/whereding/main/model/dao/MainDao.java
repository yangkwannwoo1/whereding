package com.kh.whereding.main.model.dao;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.controller.function;
import com.kh.whereding.main.model.vo.SearchDress;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.main.model.vo.SearchMakeup;
import com.kh.whereding.main.model.vo.SearchStudio;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Studio;

@Repository
public class MainDao {
	
	public ArrayList<HashTag> selectTagList(SqlSessionTemplate sqlSession, String category){
		return (ArrayList)sqlSession.selectList("mainMapper.selectTagList", category);
	}
	
	public ArrayList<Hall> selectHallList(SqlSessionTemplate sqlSession, SearchHall sh){
		return (ArrayList)sqlSession.selectList("mainMapper.selectHallList", sh);
	}

	public ArrayList<Studio> selectStudioList(SqlSessionTemplate sqlSession, SearchStudio ss){
		return (ArrayList)sqlSession.selectList("mainMapper.selectStudioList", ss);
	}
	
	public ArrayList<Dress> selectDressList(SqlSessionTemplate sqlSession, SearchDress sd){
		return (ArrayList)sqlSession.selectList("mainMapper.selectDressList", sd);
	}
	
	public ArrayList<Makeup> selectMakeupList(SqlSessionTemplate sqlSession, SearchMakeup sm){
		return (ArrayList)sqlSession.selectList("mainMapper.selectMakeupList", sm);
	}
	
	public ArrayList<Studio> selectSearchList(SqlSessionTemplate sqlSession, HashMap<String, Object> map){
		return (ArrayList)sqlSession.selectList("mainMapper.selectSearchList", map);
	}

	public ArrayList<Studio> searchStudioList(SqlSessionTemplate sqlSession, HashMap<String, Object> map){
		return (ArrayList)sqlSession.selectList("mainMapper.searchStudioList", map);
	}
	public ArrayList<Dress> searchDressList(SqlSessionTemplate sqlSession, HashMap<String, Object> map){
		return (ArrayList)sqlSession.selectList("mainMapper.searchDressList", map);
	}
	public ArrayList<Makeup> searchMakeupList(SqlSessionTemplate sqlSession, HashMap<String, Object> map){
		return (ArrayList)sqlSession.selectList("mainMapper.searchMakeupList", map);
	}

}
