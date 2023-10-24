package com.kh.whereding.main.controller;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	
//	@RequestMapping(value = "search.mn", produces = "aplication/json; charset=utf-8")
//	public void searchPlace(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm) { 
//		System.out.println(sh);
//		//(wAddress=서울특별시 종로구,서울특별시 중구, wMinPrice=0, wMaxPrice=100, wSeat=1, eatMinPrice=0, eatMaxPrice=10, wTag=스몰웨딩,일반웨딩,하우스웨딩)
//		// 좌석수 
//		// 1 : 0   ~ 100 
//		// 2 : 101 ~ 300
//		// 3 : 100 ~ 500
//		// 4 : 500 ~ 
//		System.out.println(ss);
//		//(sAddress=서울특별시 동대문,서울특별시 중랑구, sMinPrice=0, sMaxPrice=100, sWeek=on, sTag=호텔웨딩,스몰웨딩)
//		System.out.println(sd);
//		System.out.println(sm);
////		HashMap<String, String[]> map = new HashMap();
////		String[] str;
////		str = sh.getWTag().split(",");
////		map.put("wTag",str);
//		ArrayList<Hall> hlist = mnService.selectHallList(sh);
////		ArrayList allList = new ArrayList();
////		allList.add(ss);
////		allList.add(sd);
////		allList.add(sm);
//		
////			System.out.println(a);
//		
//		ArrayList<Studio> slist = mnService.selectStudioList(ss);
//		ArrayList<Dress> dlist = mnService.selectDressList(sd);
//		ArrayList<Makeup> mlist = mnService.selectMakeupList(sm);
//		
//		
//		System.out.println("---------------------");
//		for(Hall h : hlist) {
//			System.out.println(h);			
//		}
//		System.out.println("---------------------");
//		for(Studio s : slist) {
//			System.out.println(s);			
//		}
//		System.out.println("---------------------");
//		for(Dress d : dlist) {
//			System.out.println(d);			
//		}
//		System.out.println("---------------------");
//		for(Makeup m : mlist) {
//			System.out.println(m);			
//		}
//		System.out.println("---------------------");
//	}
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
			
//			System.out.println("SDM");
//			System.out.println(slist);
//			System.out.println(dlist);
//			System.out.println(mlist);
//			System.out.println("---------------------------------");
//			System.out.println("---------------------");
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
