package com.yw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MatchController {
	
	@RequestMapping(value="/match")
	public String movies(){
		return "match";
	}
	
}
