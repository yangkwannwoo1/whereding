package com.kh.whereding.basket.model.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import retrofit2.http.Url;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class TokenTest2 {

	public static String Token() throws IOException, ParseException {
		HttpURLConnection conn = null;
		String access_token =null;
		URL url = new URL("https://api.iamport.kr/users/getToken");
		conn = (HttpURLConnection) url.openConnection();
		
		
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
				
		conn.setDoOutput(true);
		
		JSONObject obj = new JSONObject();
		obj.put("imp_key","6112045327080013");
		obj.put("imp_secret","D97xQCgQKed1pyN7DpxoUwt9DCyP166EilTLUR5SmFEC8Hni55v7v2oe4Fp8YzCv4ONRSDRPRgRg4CPu");
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(obj.toString());
		bw.flush();
		bw.close();
		
		int result = 0;
		int responeseCode = conn.getResponseCode();
//		System.out.println("응답코드 : @@@"+ responeseCode);
		if(responeseCode == 200) {
			BufferedReader br = new  BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line = null;
			while((line = br.readLine()) != null ) {
				sb.append(line + "\n");
			}
			br.close();
			
			  // JSON 파싱을 위한 JSON-Simple 라이브러리 사용
            JSONParser parser = new JSONParser();
            JSONObject jsonResponse = (JSONObject) parser.parse(sb.toString());

            // "response" 객체 내의 "access_token" 값을 추출하여 변수에 저장
            JSONObject responseObj = (JSONObject) jsonResponse.get("response");
            access_token = (String) responseObj.get("access_token");
//            System.out.println("Access Token: " + access_token);


            result = 1;
		return access_token;
			
		}else {
//			System.out.println(conn.getResponseMessage());
		}
		return null;
		
				
	}
}
