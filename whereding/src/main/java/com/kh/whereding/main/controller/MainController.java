package com.kh.whereding.main.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.main.model.service.MainServiceImpl;
import com.kh.whereding.main.model.vo.SearchDress;
import com.kh.whereding.main.model.vo.SearchHall;
import com.kh.whereding.main.model.vo.SearchMakeup;
import com.kh.whereding.main.model.vo.SearchStudio;
import com.kh.whereding.product.model.vo.Dress;
import com.kh.whereding.product.model.vo.Hall;
import com.kh.whereding.product.model.vo.Makeup;
import com.kh.whereding.product.model.vo.Reservation;
import com.kh.whereding.product.model.vo.Studio;

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
		
		ArrayList<Hall> hlist = mnService.selectHallList(sh);

		// studio 
		HashMap<String, Object> map = new HashMap<String, Object>();
		//(ssAddress=서울특별시 동대문,서울특별시 중랑구, ssMinPrice=0, ssMaxPrice=100, ssWeek=on, ssTag=호텔웨딩,스몰웨딩)
		ArrayList<String> salist = new ArrayList<String>();
		ArrayList<String> stlist = new ArrayList<String>();
		
		salist.addAll(Arrays.asList(ss.getSsAddress().split(",")));
		stlist.addAll(Arrays.asList(ss.getSsTag().split(",")));
		
		map.put("ssAddress", salist);
		if(ss.getSsTag().equals("")) {
			map.put("ssTag", "");
		}else {
			map.put("ssTag", stlist);
		}
		map.put("ssMinPrice", ss.getSsMinPrice());
		map.put("ssMaxPrice", ss.getSsMaxPrice());
		map.put("ssWeek", ss.getSsWeek());
	
		// dress
		ArrayList<String> dalist = new ArrayList<String>();
		ArrayList<String> dtlist = new ArrayList<String>();
		
		dalist.addAll(Arrays.asList(sd.getDsAddress().split(",")));
		dtlist.addAll(Arrays.asList(sd.getDsTag().split(",")));
		
		map.put("dsAddress", dalist);
		if(sd.getDsTag().equals("")) {
			map.put("dsTag", "");
		}else {
			map.put("dsTag", dtlist);
		}
		map.put("dsMinPrice", sd.getDsMinPrice());
		map.put("dsMaxPrice", sd.getDsMaxPrice());
		map.put("dsWeek", sd.getDsWeek());
		
		
		// makeup
		ArrayList<String> malist = new ArrayList<String>();
		ArrayList<String> mtlist = new ArrayList<String>();
		
		malist.addAll(Arrays.asList(sm.getMsAddress().split(",")));
		mtlist.addAll(Arrays.asList(sm.getMsTag().split(",")));

		map.put("msAddress", malist);
		if(sm.getMsTag().equals("")) {
			map.put("msTag", "");
		}else {
			map.put("msTag", mtlist);				
		}
		map.put("msMinPrice", sm.getMsMinPrice());
		map.put("msMaxPrice", sm.getMsMaxPrice());
		map.put("msWeek", sm.getMsWeek());

		ArrayList<Studio> slist = mnService.searchStudioList(map);
		ArrayList<Dress> dlist = mnService.searchDressList(map);
		ArrayList<Makeup> mlist = mnService.searchMakeupList(map);

		for(Makeup m : mlist) {
			System.out.println(m);			
		}
		for(Studio s : slist) {
			System.out.println(s);
		}
		for(Dress d : dlist) {
			System.out.println(d);
		}
		for(Makeup m : mlist) {
			System.out.println(m);
		}
	}

	@ResponseBody
	@RequestMapping(value="selectBasket.sb", produces = "application/json; charset=utf-8")
	public String selectBasketList(String userNo) {
		System.out.println(userNo);
		ArrayList<Basket> list = mnService.selectBasketList(userNo);
		System.out.println(list);
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value="selectRsv.sb", produces = "application/json; charset=utf-8")
	public String selectRsvList(String userNo) {
		ArrayList<Reservation> list = mnService.selectRsvList(userNo);
		for(Reservation r : list) {
			System.out.println(r);
			
		}
		return new Gson().toJson(list);
	}
	
//	@RequestMapping("/")
//	public String Main() {
//	    //일 방문자수 ++ - 02.19
//		System.out.println("메인페이지 방문");
//		mnService.addVisit();		
//	    return ("common/main");
//	}
		

}
