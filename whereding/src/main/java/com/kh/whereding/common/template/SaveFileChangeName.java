package com.kh.whereding.common.template;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class SaveFileChangeName {
	
	public static String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename(); // "flower.png"
		
		// "20231004154607" (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()); // 현재시간(포멧형식으로) 
		int ranNum = (int)(Math.random()*90000 + 10000); // 5자리 랜덤값
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = "whereding-" + currentTime + ranNum + ext;
		
		// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return changeName;
}
}
