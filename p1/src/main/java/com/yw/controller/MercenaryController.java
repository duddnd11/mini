package com.yw.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class MercenaryController {
	@RequestMapping(value="mercenary")
	public String mercenary() {
		return "mercenary";
	}
	
	@RequestMapping(value="mercenaryRecruit")
	public String mercenaryRecruit() {
		return "mercenaryRecruit";
	}
}
