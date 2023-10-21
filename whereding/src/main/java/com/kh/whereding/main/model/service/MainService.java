package com.kh.whereding.main.model.service;

import java.util.ArrayList;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.product.model.vo.Hall;

public interface MainService {

	// 태그찾기 버튼 눌렀을때 태그 불러오기
	ArrayList<HashTag> selectTagList(String category);
	
	// 메인에서 홀 검색
	ArrayList<Hall> selectHallList(SearchHall sh);
	
	
}
