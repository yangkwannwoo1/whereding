package com.kh.whereding.main.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.gift.model.vo.Basket;
import com.kh.whereding.main.model.vo.SearchDress;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.main.model.vo.SearchMakeup;
import com.kh.whereding.main.model.vo.SearchStudio;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Reservation;
import com.kh.whereding.product.model.vo.Studio;

public interface MainService {

	// 태그찾기 버튼 눌렀을때 태그 불러오기
	ArrayList<HashTag> selectTagList(String category);
	
	// 메인에서 홀 검색
	ArrayList<Hall> selectHallList(SearchHall sh);
//	// 메인에서 스튜디오 검색
	ArrayList<Studio> selectStudioList(SearchStudio ss);
//	// 메인에서 드레스 검색
	ArrayList<Dress> selectDressList(SearchDress sd);
//	// 메인에서 메이크업 검색
	ArrayList<Makeup> selectMakeupList(SearchMakeup sm);
	
	// 스드메 전체 검색 쿼리
	ArrayList<Studio> selectSearchList(HashMap<String, Object> map);

//	// 메인에서 스튜디오 검색
	ArrayList<Studio> searchStudioList(HashMap<String, Object> map);
//	// 메인에서 드레스 검색
	ArrayList<Dress> searchDressList(HashMap<String, Object> map);
//	// 메인에서 메이크업 검색
	ArrayList<Makeup> searchMakeupList(HashMap<String, Object> map);

	// 사이드바에서 장바구니 불러오기
	ArrayList<Basket> selectBasketList(String userNo);

	// 사이드바에서 장바구니 불러오기
	ArrayList<Reservation> selectRsvList(String userNo);
}
