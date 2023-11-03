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

	private String msAddress;
	private int msMinPrice;
	private int msMaxPrice;
	private String msWeek;
	private String msTag;
	
}
