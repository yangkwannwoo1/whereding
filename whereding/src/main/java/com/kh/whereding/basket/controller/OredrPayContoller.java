package com.kh.whereding.basket.controller;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class OredrPayContoller {
   
private IamportClient api;
   
   public OredrPayContoller() {
       // REST API 키와 REST API secret 를 아래처럼 순서대로 입력한다.
      this.api = new IamportClient("6112045327080013","D97xQCgQKed1pyN7DpxoUwt9DCyP166EilTLUR5SmFEC8Hni55v7v2oe4Fp8YzCv4ONRSDRPRgRg4CPu");
   }
      
   @ResponseBody
   @RequestMapping(value="/verifyIamport/{imp_uid}")
   public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session, @PathVariable(value= "imp_uid") String imp_uid) throws IamportResponseException, IOException{

         return api.paymentByImpUid(imp_uid);
   }

   //@RequestMapping("pro.onebuy")
   public void check(@RequestParam(name="name") String pName) {
      System.out.println("rkrk" + pName);
      //System.out.println("rkssss" + address);
      
   }
}