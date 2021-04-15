package com.example.busqueda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchController {
	@RequestMapping("/")
	public String checkMVC() {
		return "login";
	}
	
	@RequestMapping("/search")
	public String search() {
		return "search";
	}
}
