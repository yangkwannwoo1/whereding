package com.kh.whereding.basket.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.whereding.basket.model.vo.Basket;

@Repository
public class BasketDao {
	
	public ArrayList<Basket> selectBoardList(SqlSessionTemplate sqlSession, String userNo){
		
	}
	

}
