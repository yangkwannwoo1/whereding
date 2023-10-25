package com.kh.whereding.main.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.whereding.common.model.vo.HashTag;
import com.kh.whereding.gift.model.vo.Basket;
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

//			 studio 
			HashMap<String, Object> map = new HashMap<String, Object>();
		//(sAddress=서울특별시 동대문,서울특별시 중랑구, sMinPrice=0, sMaxPrice=100, sWeek=on, sTag=호텔웨딩,스몰웨딩)
			ArrayList<String> salist = new ArrayList<String>();
			ArrayList<String> stlist = new ArrayList<String>();
			
			salist.addAll(Arrays.asList(ss.getSAddress().split(",")));
			stlist.addAll(Arrays.asList(ss.getSTag().split(",")));
			
			map.put("sAddress", salist);
			if(ss.getSTag().equals("")) {
				map.put("sTag", "");
			}else {
				map.put("sTag", stlist);
			}
			map.put("sMinPrice", ss.getSMinPrice());
			map.put("sMaxPrice", ss.getSMaxPrice());
			map.put("sWeek", ss.getSWeek());
		
		// dress
			ArrayList<String> dalist = new ArrayList<String>();
			ArrayList<String> dtlist = new ArrayList<String>();
			
			dalist.addAll(Arrays.asList(sd.getDAddress().split(",")));
			dtlist.addAll(Arrays.asList(sd.getDTag().split(",")));
			
			map.put("dAddress", dalist);
			if(sd.getDTag().equals("")) {
				map.put("dTag", "");
			}else {
				map.put("dTag", dtlist);
			}
			map.put("dMinPrice", sd.getDMinPrice());
			map.put("dMaxPrice", sd.getDMaxPrice());
			map.put("dWeek", sd.getDWeek());
			
			
		// makeup
			ArrayList<String> malist = new ArrayList<String>();
			ArrayList<String> mtlist = new ArrayList<String>();
			
			malist.addAll(Arrays.asList(sm.getMAddress().split(",")));
			mtlist.addAll(Arrays.asList(sm.getMTag().split(",")));
//			System.out.println(sm);
			map.put("mAddress", malist);
			if(sm.getMTag().equals("")) {
				map.put("mTag", "");
			}else {
				map.put("mTag", mtlist);				
			}
			map.put("mMinPrice", sm.getMMinPrice());
			map.put("mMaxPrice", sm.getMMaxPrice());
			map.put("mWeek", sm.getMWeek());
//			System.out.println(map);
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
//		System.out.println(userNo);
		ArrayList<Basket> list = mnService.selectBasketList(userNo);
	
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value="selectRsv.sb", produces = "application/json; charset=utf-8")
	public String selectRsvList(String userNo) {
		ArrayList<Reservation> list = mnService.selectRsvList(userNo);
		return new Gson().toJson(list);
	}
		

}
