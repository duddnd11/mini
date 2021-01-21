package com.yw.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yw.service.ApplyService;

@RestController
@RequestMapping(value="/rest", produces = "application/json; charset=utf-8")
public class MyRestController {
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value="/applymatch")
	@ResponseBody
	public int apply(@RequestBody Map<String,Object> param) {
		System.out.println("확인");
		return 1;
	}

}
