package com.kh.whereding.gift.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class Basket {
	private int userNo;
	private String giftName;
	private int giftPrice;
	private String filePath;
	private int refNo;
	private int count;
}
