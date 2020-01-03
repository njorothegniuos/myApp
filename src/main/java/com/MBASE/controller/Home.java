package com.MBASE.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/welcome")
public class Home {
	
	@RequestMapping("/hello")
	public String welcome() {
		return "Jenkins pipeline config script";
	}

}
