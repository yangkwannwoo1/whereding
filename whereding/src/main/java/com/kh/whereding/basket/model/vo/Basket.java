package com.kh.whereding.basket.model.vo;

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
	private String userNo;
	private String userName;
	private String giftName;
	private int giftPrice;
	private String filePath;
	private String refNo;
	private String count;
	private String giftContent;
	private String categoryItem;
	private String[] delRef;
}
