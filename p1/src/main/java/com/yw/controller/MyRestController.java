package com.yw.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yw.service.ApplyService;
import com.yw.service.MatchService;
import com.yw.vo.ApplyVo;

@RestController
@RequestMapping(value="/rest", produces = "application/json; charset=utf-8")
public class MyRestController {
	@Autowired
	ApplyService applyService;
	
	@Autowired
	MatchService matchService;
	
	@RequestMapping(value="/applymatch")
	@ResponseBody
	public int apply(@RequestBody Map<String,Object> param) {
		int mbno=(Integer)param.get("mbno");
		String id=(String) param.get("id");
		String teamname=(String) param.get("teamname");
		ApplyVo vo = new ApplyVo();
		vo.setMbno(mbno);
		vo.setId(id);
		vo.setTeamname(teamname);
		applyService.applyService(vo);
		return 1;
	}
	
	@RequestMapping(value="/applyList")
	@ResponseBody
	public List<ApplyVo> applyList(@RequestBody Map<String,Integer> param) {
		int mbno = param.get("mbno");
		List<ApplyVo> list= applyService.applyListService(mbno);
		return list;
	}
	
	@RequestMapping(value="/updateState")
	@ResponseBody
	public int updateState(@RequestBody Map<String,Integer> param) {
		int applyno = param.get("applyno");
		int mbno =param.get("mbno");
		matchService.updateStateService(mbno);
		applyService.updateStateService(applyno);
		applyService.updateStateFailService(applyno, mbno);
		return 1;
	}
}
