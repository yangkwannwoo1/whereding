package com.kh.whereding.reservationBasket.model.vo;

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
public class ReservationBasket {

	private String companyNo;
	private String enterprise;
	private String address;
	private String phone;
	private String file1;
	private String file2;
	private String file3;
	private String tagContent;
	private String hallName;
	private int hallSeat;
	private int price;
	private int hallMeal;
	private int restaurantSeat;
	private String startTime;
	private String endTime;
	private String weekOpen;
	
}
