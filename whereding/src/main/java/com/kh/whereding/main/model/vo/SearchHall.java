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

	private String wsAddress;
	private int wsMinPrice;
	private int wsMaxPrice;
	private int wsSeat;
	private int eatMinPrice;
	private int eatMaxPrice;
	private String wsTag;
}
