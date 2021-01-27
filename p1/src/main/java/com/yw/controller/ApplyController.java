package com.yw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yw.service.ApplyService;
import com.yw.vo.ApplyVo;

@Controller
public class ApplyController {
	@Autowired
	ApplyService service;
	
	@RequestMapping(value="apply")
	public String apply(ApplyVo vo) {
		service.applyService(vo);
		return "redirect:/matchDetail?mbno="+vo.getMbno();
	}
}
