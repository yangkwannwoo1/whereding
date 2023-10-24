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
	
	private String giftNo;
	private int categoryNo;
	private String giftName;
	private String giftContent;
	private int giftPrice;
	private int count;
	private String imgPath;
	private String img1;
	private String img2;
	private String img3;
}
