package com.kh.whereding.main.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Getter
@Setter
public class SearchMakeup{

	private String mAddress;
	private int mMinPrice;
	private int mMaxPrice;
	private String mWeek;
	private String mTag;
	
}
