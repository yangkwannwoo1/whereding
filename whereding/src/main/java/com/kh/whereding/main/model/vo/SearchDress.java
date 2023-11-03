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
public class SearchDress {

	private String dsAddress;
	private int dsMinPrice;
	private int dsMaxPrice;
	private String dsWeek;
	private String dsTag;
	
}

