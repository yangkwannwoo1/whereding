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
public class SearchStudio {

	private String ssAddress;
	private int ssMinPrice;
	private int ssMaxPrice;
	private String ssWeek;
	private String ssTag;

}
