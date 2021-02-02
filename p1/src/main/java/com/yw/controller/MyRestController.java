package com.yw.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
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
import com.yw.vo.MatchBoardVo;

import net.nurigo.java_sdk.Coolsms;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;



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
		MatchBoardVo matchVo =matchService.matchDetailService(mbno);
		String category=matchVo.getCategory();
		
		/*
		// 문자 전송
		String writerId = param.get("writerId");
		CustomUserDetail user = (CustomUserDetail) userService.loadUserByUsername(writerId);
		String api_key="NCSI1OI9LPOHBIL0";
		String api_secret="4QVFDL3PXY8SE14V3ABOIYOIAXYXOGWX";
		Message message = new Message(api_key,api_secret);
		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", user.getPhoneNum()); // 받는 사람
	    set.put("from", "01076370922"); // 발신번호
	    if(category.equals("매치")) {
	    	set.put("text", "매치신청이 들어왔습니다."); // 문자내용
	    }else {
	    	set.put("text", "용병신청이 들어왔습니다."); // 문자내용
	    }
	    set.put("type", "sms"); // 문자 타입
	    try {
			JSONObject obj = (JSONObject)message.send(set);
		} catch (CoolsmsException e) {
			e.printStackTrace();
		}
		*/
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







