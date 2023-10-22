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
public class SearchHall {

	private String wAddress;
	private int wMinPrice;
	private int wMaxPrice;
	private int wSeat;
	private int eatMinPrice;
	private int eatMaxPrice;
	private String wTag;
}
