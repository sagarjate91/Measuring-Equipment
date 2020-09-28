package com.measuring.equipment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/measuring/equipment")
public class HomeController {
	
	@GetMapping("/")
	private String index(){
		return "page";
	}

}
