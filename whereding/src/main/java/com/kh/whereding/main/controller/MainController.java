package com.kh.whereding.main.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

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

//	@RequestMapping(value = "search.mn", produces = "aplication/json; charset=utf-8")
//	public void searchPlace(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm) { 
//		
//		ArrayList<Hall> hlist = mnService.selectHallList(sh);
//
//		// studio 
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		//(ssAddress=서울특별시 동대문,서울특별시 중랑구, ssMinPrice=0, ssMaxPrice=100, ssWeek=on, ssTag=호텔웨딩,스몰웨딩)
//		ArrayList<String> salist = new ArrayList<String>();
//		ArrayList<String> stlist = new ArrayList<String>();
//		
//		salist.addAll(Arrays.asList(ss.getSsAddress().split(",")));
//		stlist.addAll(Arrays.asList(ss.getSsTag().split(",")));
//		
//		map.put("ssAddress", salist);
//		if(ss.getSsTag().equals("")) {
//			map.put("ssTag", "");
//		}else {
//			map.put("ssTag", stlist);
//		}
//		map.put("ssMinPrice", ss.getSsMinPrice());
//		map.put("ssMaxPrice", ss.getSsMaxPrice());
//		map.put("ssWeek", ss.getSsWeek());
//	
//		// dress
//		ArrayList<String> dalist = new ArrayList<String>();
//		ArrayList<String> dtlist = new ArrayList<String>();
//		
//		dalist.addAll(Arrays.asList(sd.getDsAddress().split(",")));
//		dtlist.addAll(Arrays.asList(sd.getDsTag().split(",")));
//		
//		map.put("dsAddress", dalist);
//		if(sd.getDsTag().equals("")) {
//			map.put("dsTag", "");
//		}else {
//			map.put("dsTag", dtlist);
//		}
//		map.put("dsMinPrice", sd.getDsMinPrice());
//		map.put("dsMaxPrice", sd.getDsMaxPrice());
//		map.put("dsWeek", sd.getDsWeek());
//		
//		
//		// makeup
//		ArrayList<String> malist = new ArrayList<String>();
//		ArrayList<String> mtlist = new ArrayList<String>();
//		
//		malist.addAll(Arrays.asList(sm.getMsAddress().split(",")));
//		mtlist.addAll(Arrays.asList(sm.getMsTag().split(",")));
//
//		map.put("msAddress", malist);
//		if(sm.getMsTag().equals("")) {
//			map.put("msTag", "");
//		}else {
//			map.put("msTag", mtlist);				
//		}
//		map.put("msMinPrice", sm.getMsMinPrice());
//		map.put("msMaxPrice", sm.getMsMaxPrice());
//		map.put("msWeek", sm.getMsWeek());
//
//		ArrayList<Studio> slist = mnService.searchStudioList(map);
//		ArrayList<Dress> dlist = mnService.searchDressList(map);
//		ArrayList<Makeup> mlist = mnService.searchMakeupList(map);
//
//		for(Makeup m : mlist) {
//			System.out.println(m);			
//		}
//		for(Studio s : slist) {
//			System.out.println(s);
//		}
//		for(Dress d : dlist) {
//			System.out.println(d);
//		}
//		for(Makeup m : mlist) {
//			System.out.println(m);
//		}
//	}

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
	
	@RequestMapping(value = "search.mn")
	public String mainSearch(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm, HttpSession session) {
		System.out.println("검색한 홀 :  "+ sh);
		System.out.println("검색한 스튜디오 :  "+ ss);
		System.out.println("검색한 드레스 :  "+ sd);
		System.out.println("검색한 메이크업 :  "+ sm);
		
		// 만원 단위를 원으로 변환
		int wsMin = sh.getWsMinPrice();
		sh.setWsMinPrice(wsMin * 10000);
		int wsMax = sh.getWsMaxPrice();
		sh.setWsMaxPrice(wsMax * 10000);
		int eatMin = sh.getEatMinPrice();
		sh.setEatMinPrice(eatMin * 10000);
		int eatMax = sh.getEatMaxPrice();
		sh.setEatMaxPrice(eatMax * 10000);
		
		// ,로 나열된 것들을 변수로
		String swAddress = sh.getWsAddress();
		String wsTag = sh.getWsTag();
		// 실제 뿌려질 홀 리스트
		ArrayList<Hall> hall = new ArrayList<Hall>();
		
		// 주소가 뭐라도 담겼을 경우
		if(swAddress != null) {
			
			// 주소의 ,를 구분으로 배열화 함
			String[] address =  swAddress.split(",");
			String[] tag = wsTag.split(",");
			
			// 배열을 다시 원래의 몸으로 붙여 하나씩 조회해옴
			for(int i=0;i<address.length;i++) {
//				SearchHall ssh = new SearchHall();
				sh.setWsAddress(address[i]);
				
				if(tag != null) {
					for(int j=0;j<tag.length;j++) {
						sh.setWsTag(tag[j]);
						ArrayList<Hall> shal = mnService.searchHallList(sh);
						
						// 진짜 홀에 붙임
						hall.addAll(shal);	
					}
				}else {
					ArrayList<Hall> shal = mnService.searchHallList(sh);
					// 진짜 홀에 붙임
					hall.addAll(shal);	
				}
				
			}
			
		}
		
		
		// 화면단으로 뿌려주기 위해 단위 원상복구
		sh.setWsMinPrice(wsMin);
		sh.setWsMaxPrice(wsMax);
		sh.setEatMinPrice(eatMin);
		sh.setEatMaxPrice(eatMax);
		sh.setWsAddress(swAddress);
		sh.setWsTag(wsTag);
		
		
		for(Hall ha : hall) {
			System.out.println("조건맞는 hall리스트 : "+ha);
		}
		
		session.setAttribute("sh", sh);
		session.setAttribute("ss", ss);
		session.setAttribute("sd", sd);
		session.setAttribute("sm", sm);
		session.setAttribute("list", hall);
		
		
		return"product/searchView";
	}

	@RequestMapping(value = "searchStudio.mn")
	public String searchStudio(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm, HttpSession session) {
		System.out.println("검색한 홀 :  "+ sh);
		System.out.println("검색한 스튜디오 :  "+ ss);
		System.out.println("검색한 드레스 :  "+ sd);
		System.out.println("검색한 메이크업 :  "+ sm);
		
		// 만원 단위를 원으로 변환
		int ssMinPrice = ss.getSsMinPrice();
		ss.setSsMinPrice(ssMinPrice * 10000);
		int ssMaxPrice = ss.getSsMaxPrice();
		ss.setSsMaxPrice(ssMaxPrice * 10000);
	
		
		// ,로 나열된 것들을 변수로
		String ssAddress = ss.getSsAddress();
		String ssTag = ss.getSsTag();
		// 실제 뿌려질 홀 리스트
		ArrayList<Studio> Studio = new ArrayList();
		
		// 주소가 뭐라도 담겼을 경우
		if(ssAddress != null) {
			
			// 주소의 ,를 구분으로 배열화 함
			String[] address =  ssAddress.split(",");
			String[] tag = ssTag.split(",");
			
			// 배열을 다시 원래의 몸으로 붙여 하나씩 조회해옴
			for(int i=0;i<address.length;i++) {
//						SearchHall ssh = new SearchHall();
				ss.setSsAddress(address[i]);
				
				if(tag != null) {
					for(int j=0;j<tag.length;j++) {
						ss.setSsTag(tag[j]);
						ArrayList<Studio> stu = mnService.ajaxSearchStudioList(ss);
						
						// 진짜 홀에 붙임
						Studio.addAll(stu);
					}
				}else {
					ArrayList<Studio> sstu = mnService.ajaxSearchStudioList(ss);
					// 진짜 홀에 붙임
					Studio.addAll(sstu);	
				}
				
			}
			
		}
		
		
		// 화면단으로 뿌려주기 위해 단위 원상복구
		ss.setSsMinPrice(ssMinPrice);
		ss.setSsMaxPrice(ssMaxPrice);
		ss.setSsAddress(ssAddress);
		ss.setSsTag(ssTag);
		
		
		for(Studio st : Studio) {
			System.out.println("조건맞는 studio리스트 : "+st);
		}
		
		session.setAttribute("sh", sh);
		session.setAttribute("ss", ss);
		session.setAttribute("sd", sd);
		session.setAttribute("sm", sm);
		session.setAttribute("clist", Studio);
		session.removeAttribute("list");
				
		return"product/searchView";
				
				
		
	}
	
	@RequestMapping(value = "searchDress.mn")
	public String searchDress(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm, HttpSession session) {
		System.out.println("검색한 홀 :  "+ sh);
		System.out.println("검색한 스튜디오 :  "+ ss);
		System.out.println("검색한 드레스 :  "+ sd);
		System.out.println("검색한 메이크업 :  "+ sm);
		
		// 만원 단위를 원으로 변환
		int dsMinPrice = sd.getDsMinPrice();
		sd.setDsMinPrice(dsMinPrice * 10000);
		int dsMaxPrice = sd.getDsMaxPrice();
		sd.setDsMaxPrice(dsMaxPrice * 10000);
	
		
		// ,로 나열된 것들을 변수로
		String sdAddress = sd.getDsAddress();
		String sdTag = sd.getDsTag();
		// 실제 뿌려질 홀 리스트
		ArrayList<Dress> dress = new ArrayList();
		
		// 주소가 뭐라도 담겼을 경우
		if(sdAddress != null) {
			
			// 주소의 ,를 구분으로 배열화 함
			String[] address =  sdAddress.split(",");
			String[] tag = sdTag.split(",");
			
			// 배열을 다시 원래의 몸으로 붙여 하나씩 조회해옴
			for(int i=0;i<address.length;i++) {
//						SearchHall ssh = new SearchHall();
				ss.setSsAddress(address[i]);
				
				if(tag != null) {
					for(int j=0;j<tag.length;j++) {
						sd.setDsTag(tag[j]);
						ArrayList<Dress> drs = mnService.ajaxSearchDressList(sd);
						
						// 진짜 홀에 붙임
						dress.addAll(drs);
					}
				}else {
					ArrayList<Dress> drss = mnService.ajaxSearchDressList(sd);
					// 진짜 홀에 붙임
					dress.addAll(drss);	
				}
				
			}
			
		}
		
		
		// 화면단으로 뿌려주기 위해 단위 원상복구
		sd.setDsMinPrice(dsMinPrice);
		sd.setDsMaxPrice(dsMaxPrice);
		sd.setDsAddress(sdAddress);
		sd.setDsTag(sdTag);
		
		
		for(Dress dr : dress) {
			System.out.println("조건맞는 drss리스트 : "+dr);
		}
		
		session.setAttribute("sh", sh);
		session.setAttribute("ss", ss);
		session.setAttribute("sd", sd);
		session.setAttribute("sm", sm);
		session.setAttribute("clist", dress);
		session.removeAttribute("list");
				
		return"product/searchView";
	}
		
	@RequestMapping(value = "searchMakeup.mn")
	public String searchMakeup(SearchHall sh, SearchStudio ss, SearchDress sd, SearchMakeup sm, HttpSession session) {
		System.out.println("검색한 홀 :  "+ sh);
		System.out.println("검색한 스튜디오 :  "+ ss);
		System.out.println("검색한 드레스 :  "+ sd);
		System.out.println("검색한 메이크업 :  "+ sm);
		
		// 만원 단위를 원으로 변환
		int smMinPrice = sm.getMsMinPrice();
		sm.setMsMinPrice(smMinPrice * 10000);
		int smMaxPrice = sm.getMsMaxPrice();
		sm.setMsMaxPrice(smMaxPrice * 10000);
	
		
		// ,로 나열된 것들을 변수로
		String smAddress = sm.getMsAddress();
		String smTag = sm.getMsTag();
		// 실제 뿌려질 홀 리스트
		ArrayList<Makeup> makeup = new ArrayList();
		
		// 주소가 뭐라도 담겼을 경우
		if(smAddress != null) {
			
			// 주소의 ,를 구분으로 배열화 함
			String[] address =  smAddress.split(",");
			String[] tag = smTag.split(",");
			
			// 배열을 다시 원래의 몸으로 붙여 하나씩 조회해옴
			for(int i=0;i<address.length;i++) {
//						SearchHall ssh = new SearchHall();
				sm.setMsAddress(address[i]);
				
				if(tag != null) {
					for(int j=0;j<tag.length;j++) {
						sm.setMsTag(tag[j]);
						ArrayList<Makeup> mk = mnService.ajaxSearchMakeupList(sm);
						
						// 진짜 홀에 붙임
						makeup.addAll(mk);
					}
				}else {
					ArrayList<Makeup> mkk = mnService.ajaxSearchMakeupList(sm);
					// 진짜 홀에 붙임
					makeup.addAll(mkk);	
				}
				
			}
			
		}
		
		
		// 화면단으로 뿌려주기 위해 단위 원상복구
		sm.setMsMinPrice(smMinPrice);
		sm.setMsMaxPrice(smMaxPrice);
		sm.setMsAddress(smAddress);
		sm.setMsTag(smTag);
		
		
		for(Makeup mu : makeup) {
			System.out.println("조건맞는 makeup리스트 : "+mu);
		}
		
		session.setAttribute("sh", sh);
		session.setAttribute("ss", ss);
		session.setAttribute("sd", sd);
		session.setAttribute("sm", sm);
		session.setAttribute("clist", makeup);
		session.removeAttribute("list");
				
		return"product/searchView";
	}

}
