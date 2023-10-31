package com.kh.whereding.payment.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Payment {
/*
pg : 'kcp',
pay_method : 'card',
merchant_uid : 'merchant_' + new Date().getTime(),
name : '상품1' , //결제창에서 보여질 이름
amount : 100, //실제 결제되는 가격
buyer_email : 'iamport@siot.do',
buyer_name : '구매자이름',
buyer_tel : '010-1234-5678',
buyer_addr : '서울 강남구 도곡동',
buyer_postcode : '123-456'
 */
	
	private String pg;
	private String pay_method;
	private String merchant_uid;
	private String name;
	private String amount;
	private String buyer_email;
	private String buyer_name;
	private String buyer_tel;
	private String buyer_addr;
	private String buyer_postcode;
	
}
