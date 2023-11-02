package com.kh.whereding.basket.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.whereding.basket.model.dao.BasketDao;
import com.kh.whereding.basket.model.vo.Basket;
import com.kh.whereding.coupon.model.vo.Coupon;
import com.kh.whereding.gift.model.vo.Gift;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	private BasketDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public ArrayList<Basket> selectBasketList(String userNo) {
		return bDao.selectBasketList(sqlSession, userNo);
	}

	@Override
	public int deleteBasket(Basket b) {
		return bDao.deleteBasket(sqlSession, b);
	}

	@Override
	public ArrayList<Coupon> selectCouponList(String userNo) {
		return bDao.selectCouponList(sqlSession, userNo);
	}

	@Override
	public Gift selectbasketOne(String giftNo) {
		return bDao.selectbasketOne(sqlSession,giftNo );
	}

	@Override
	public int deleteOrderBasket(Gift gt) {
		int result = bDao.deleteOrderBasket(sqlSession, gt);
		return result;
	}

	@Override
	public int insertGiftHistiry(Gift gt) {
		int result = bDao.insertGiftHistiry(sqlSession, gt);
		int result2 = bDao.insertPayment(sqlSession,gt);
		return result*result2;
	}

	@Override
	public void refund(String access_token) throws IOException  {
			HttpURLConnection conn = null;
		
			URL url = new URL("https://api.iamport.kr/payments/cancel");
			conn = (HttpURLConnection) url.openConnection();
			
			
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			conn.setRequestProperty("Accept", "application/json");
			conn.setRequestProperty("Authorization",access_token );
					
			conn.setDoOutput(true);
			
			JSONObject obj = new JSONObject();
			obj.put("imp_uid","imp_799200379731");
			obj.put("reason","테스트 결제 취소");
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(obj.toString());
			bw.flush();
			bw.close();
			
			int result = 0;
			int responeseCode = conn.getResponseCode();
			System.out.println("응답코드 : @@@"+ responeseCode);
			if(responeseCode == 200) {
				BufferedReader br = new  BufferedReader(new InputStreamReader(conn.getInputStream()));
				StringBuilder sb = new StringBuilder();
				String line = null;
				while((line = br.readLine()) != null ) {
					sb.append(line + "\n");
				}
				br.close();
				System.out.println(""+sb.toString());
				result = 1;
				
			}else {
				System.out.println(conn.getResponseMessage());
			}
		
	}
	
}
