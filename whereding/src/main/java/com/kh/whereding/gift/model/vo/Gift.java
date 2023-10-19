package com.kh.whereding.gift.model.vo;

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
public class Gift {
	
	private int giftNo;
	private int categoryNo;
	private String giftName;
	private String giftContent;
	private int price;
	private int count;
}
