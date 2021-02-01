package com.yw.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yw.security.CustomUserDetail;
import com.yw.security.CustomUserDetailService;
import com.yw.service.ApplyService;
import com.yw.service.CommentService;
import com.yw.service.MatchService;
import com.yw.vo.ApplyVo;
import com.yw.vo.CommentVo;

@RestController
@RequestMapping(value="/rest", produces = "application/json; charset=utf-8")
public class MyRestController {
	@Autowired
	ApplyService applyService;
	
	@Autowired
	MatchService matchService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	CustomUserDetailService userService;
	
	@RequestMapping(value="/applymatch")
	@ResponseBody
	public int apply(@RequestBody Map<String,String> param,Principal principal) {
		String id=principal.getName();
		int mbno = Integer.parseInt(param.get("mbno"));
		String teamname=param.get("teamname");
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
	
	@RequestMapping(value="/idCheck")
	@ResponseBody
	public boolean idCheck(@RequestBody Map<String,String> param) {
		String id = param.get("id").trim();
		if(id=="") {
			return false;
		}
		try{
			CustomUserDetail user = (CustomUserDetail) userService.loadUserByUsername(id);
		}catch(UsernameNotFoundException e) {
			return true;
		}
		return false;
	}
	
	@RequestMapping(value="/writeComment")
	@ResponseBody
	public CommentVo writeComment(@RequestBody Map<String,String> param,Principal principal) {
		String id = principal.getName();
		int mbno = Integer.parseInt(param.get("mbno"));
		String comment = param.get("comment");
		int level =Integer.parseInt(param.get("level"));
		int ref =Integer.parseInt(param.get("ref"));
		commentService.writeCommentService(mbno, comment, id,level,ref);
		CommentVo commentVo = commentService.topCommentService();
		if(ref==0) {
			commentService.updateRefService(commentVo.getCno());
			commentVo.setRef(commentVo.getCno());
		}
		return commentVo;
	}
}







