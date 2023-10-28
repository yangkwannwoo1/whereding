package com.kh.whereding.basket.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BasketController {

	@RequestMapping(value = "basket.ba")
	public String intoService() {
		
		return "basket/basketView";
	}
}
