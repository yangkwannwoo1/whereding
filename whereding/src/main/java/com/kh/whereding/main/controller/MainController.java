package com.kh.whereding.main.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.service.MainServiceImpl;
import com.kh.whereding.main.model.vo.SearchDress;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.main.model.vo.SearchMakeup;
import com.kh.whereding.main.model.vo.SearchStudio;
import com.kh.whereding.product.model.vo.Hall;

@Controller
public class MainController {

	@Autowired
	private MainServiceImpl mnService;

	@ResponseBody
	@RequestMapping(value="tagList.mn", produces = "aplication/json; charset=utf-8")
	public String selectTagList(String category) {
//		System.out.println(category); wedding studio dress makeup
		ArrayList<HashTag> list = mnService.selectTagList(category);
//		System.out.println(list); productNo=H1, tagContent=예쁨, 감성적인, 가격이 싼), HashTag(productNo=H2, tagContent=멋있는, 갬성, 찌끄리)
		return new Gson().toJson(list);
	};
	
	
	@RequestMapping(value = "search.mn", produces = "aplication/json; charset=utf-8")
	public void searchPlace(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm) { 
		System.out.println(sh);
		//(wAddress=서울특별시 종로구,서울특별시 중구, wMinPrice=0, wMaxPrice=100, wSeat=1, eatMinPrice=0, eatMaxPrice=10, wTag=스몰웨딩,일반웨딩,하우스웨딩)
		// 좌석수 
		// 1 : 0   ~ 100 
		// 2 : 101 ~ 300
		// 3 : 100 ~ 500
		// 4 : 500 ~ 
		System.out.println(ss);
		//(sAddress=서울특별시 동대문,서울특별시 중랑구, sMinPrice=0, sMaxPrice=100, sWeek=on, sTag=호텔웨딩,스몰웨딩)
		System.out.println(sd);
		System.out.println(sm);
		
		ArrayList<Hall> hlist = mnService.selectHallList(sh);
		
		
		System.out.println(hlist);
		System.out.println("---------------------");
		for(Hall h : hlist) {
			System.out.println(h);
		}
	}
}
