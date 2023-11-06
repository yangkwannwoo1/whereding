package com.kh.whereding.main.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.ProductCollection;
import com.kh.whereding.product.model.vo.Reservation;
import com.kh.whereding.product.model.vo.Studio;

public interface MainService {

	// 태그찾기 버튼 눌렀을때 태그 불러오기
	ArrayList<HashTag> selectTagList(String category);
	
	// 메인에서 홀 검색
	ArrayList<Hall> selectHallList(HashMap<String, Object> map);
//	// 메인에서 스튜디오 검색
//	ArrayList<Studio> selectStudioList(SearchStudio ss);
//	// 메인에서 드레스 검색
//	ArrayList<Dress> selectDressList(SearchDress sd);
//	// 메인에서 메이크업 검색
//	ArrayList<Makeup> selectMakeupList(SearchMakeup sm);
	
	// 스드메 전체 검색 쿼리
	ArrayList<Studio> selectSearchList(HashMap<String, Object> map);

	// 메인에서 스튜디오 검색
	ArrayList<ProductCollection> searchStudioList(HashMap<String, Object> map);
	// 메인에서 드레스 검색
	ArrayList<ProductCollection> searchDressList(HashMap<String, Object> map);
	// 메인에서 메이크업 검색
	ArrayList<ProductCollection> searchMakeupList(HashMap<String, Object> map);

	// 사이드바에서 장바구니 불러오기
	ArrayList<Basket> selectBasketList(String userNo);

	// 사이드바에서 장바구니 불러오기
	ArrayList<Reservation> selectRsvList(String userNo);
	
	// 헤더에서 스튜디오 눌렀을때 전체 불러오기
//	ArrayList<Studio> selectStudioList();
	
	// 방문자 수 증가
//	void addVisit();
	
//	ArrayList<Hall> searchHallList(SearchHall sh);
//	
//	ArrayList<Studio> ajaxSearchStudioList(SearchStudio ss);
//	ArrayList<Dress> ajaxSearchDressList(SearchDress sd);
//	ArrayList<Makeup> ajaxSearchMakeupList(SearchMakeup sm);
}










