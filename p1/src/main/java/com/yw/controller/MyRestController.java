package com.yw.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

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
import com.yw.service.LikeService;
import com.yw.service.MatchService;
import com.yw.service.MemberService;
import com.yw.service.TeamService;
import com.yw.vo.ApplyVo;
import com.yw.vo.CommentVo;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.TeamApplyVo;

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
	
	@Autowired
	TeamService teamService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	LikeService likeService;
	
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
		
		// 문자 전송
		String writerId = param.get("writerId");
		CustomUserDetail user = (CustomUserDetail) userService.loadUserByUsername(writerId);
		CustomUserDetail user2 =(CustomUserDetail) userService.loadUserByUsername(id);
		String api_key="NCSI1OI9LPOHBIL0";
		String api_secret="4QVFDL3PXY8SE14V3ABOIYOIAXYXOGWX";
		Message message = new Message(api_key,api_secret);
		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", user.getPhoneNum()); // 받는 사람
	    set.put("from", "01076370922"); // 발신번호
	    if(category.equals("매치")) {
	    	set.put("text", id+"님으로부터 매치신청이 들어왔습니다. 팀명:"+teamname+", 휴대전화:"+user.getPhoneNum()); // 문자내용
	    }else {
	    	set.put("text", id+"님으로부터 용병신청이 들어왔습니다. 휴대전화:"+user.getPhoneNum()); // 문자내용
	    }
	    set.put("type", "sms"); // 문자 타입
	    try {
			JSONObject obj = (JSONObject)message.send(set);
		} catch (CoolsmsException e) {
			e.printStackTrace();
		}
	    
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
		System.out.println("Dd");
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
		if(id.length()>=4) {
			try{
				CustomUserDetail user = (CustomUserDetail) userService.loadUserByUsername(id);
			}catch(UsernameNotFoundException e) {
				return true;
			}
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
		CommentVo commentVo = new CommentVo(mbno, comment, id, ref, level);
		commentService.writeCommentService(commentVo);
		if(ref==0) {
			commentService.updateRefService(commentVo.getCno());
			commentVo.setRef(commentVo.getCno());
		}
		commentVo = commentService.selectCommentService(commentVo.getCno());
		return commentVo;
	}
	
	@RequestMapping(value="/applyTeam")
	@ResponseBody
	public int applyTeam(@RequestBody Map<String,String> param,Principal principal) {
		String id =principal.getName();
		TeamApplyVo vo = new TeamApplyVo();
		vo.setId(id);
		vo.setTeamno(Integer.valueOf(param.get("teamno")));
		vo.setComment(param.get("comment"));
		teamService.teamApplyService(vo);
		return 1;
	}
	
	@RequestMapping(value="/findPwAction")
	@ResponseBody
	public int findPwAction(@RequestBody Map<String,String> param) throws AddressException, MessagingException {
		String id= param.get("id");
		String phoneNum=param.get("phoneNum");
		String email=param.get("email");
		int count = memberService.findPwService(id, phoneNum, email);
		if(count>=1) {
			// 이메일보내기
			String host="smtp.naver.com"; //smtp 서버명
			String username ="ljk8003";
			String password="dlrpanjdi2#";
			int port=465;
			
			String newPw=UUID.randomUUID().toString().replace("-", "").substring(0,10);
			
			String subject="패스워드 재설정";
			String body=id+"님의 임시 비밀번호는 "+newPw+" 입니다.";
			
			// Property에 SMTP 서버 정보를 설정
			Properties props= System.getProperties();
			props.put("mail.smtp.host",host); // 발송해줄 서버
			props.put("mail.smtp.port",port ); // 통신포트
			props.put("mail.smtp.auth","true");
			props.put("mail.smtp.ssl.enable","true");
			props.put("mail.smtp.ssl.trust",host);
			
			Session session = Session.getDefaultInstance(props, new Authenticator() {
				String un= username;
				String pw = password;
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(un, pw);
				}
			});
			session.setDebug(false);
			
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(username+"@naver.com"));
			mimeMessage.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(email));
			mimeMessage.setSubject(subject);
			mimeMessage.setText(body);
			Transport.send(mimeMessage);
			
			memberService.newPwService(id, newPw);
			
			return 1;
		}else {
			return 0;
		}
	}
	
	@RequestMapping(value="/sortDate")
	@ResponseBody
	public List<MatchBoardVo> sortMatch(@RequestBody Map<String, String> param) {
		String category = param.get("category");
		String kinds = param.get("kinds");
		String place = param.get("place");
		String day1 =param.get("day1");
		String day2 = param.get("day2");
		System.out.println("category:"+category+",kinds:"+kinds+",place:"+place+",day:"+day1+"/"+day2);
		List<MatchBoardVo> matchList=null;
		matchList = matchService.matchListService(category, kinds, place, day1, day2, 0);
		/**
		if(kinds!=null && place==null && day1==null && day2==null) {
			if(kinds.equals("date")) {
				matchList = matchService.sortDateService(category,0);
			}else if(kinds.equals("entry")){
				matchList = matchService.matchListService(category,0);
			matchList = matchService.matchListService(category,kinds,0);
		}else {
			if(place!=null) {
				matchList = matchService.placeSearchService(category, place,0);
			}else {
				matchList = matchService.dateSearchService(category, day1, day2,0);
			}
		}
		}**/
		// (category,kinds,place,day1,day2,offset)
		return matchList;
	}
	
	@RequestMapping(value="/scrollMatchList")
	@ResponseBody
	public List<MatchBoardVo> scrollMatchList(@RequestBody Map<String,Object> param) {
		String category = (String)param.get("category");
		int offset = (Integer)param.get("offset");
		String kinds = (String)param.get("kinds");
		String place = (String)param.get("place");
		String day1 = (String)param.get("day1");
		String day2 = (String)param.get("day2");
		List<MatchBoardVo> matchList = null;
		matchList = matchService.matchListService(category, kinds, place, day1, day2, offset);
		/**
		if(kinds !=null) {
			if(kinds.equals("date")) {
				matchList = matchService.sortDateService(category,offset);
			}else if(kinds.equals("entry")){
				matchList = matchService.matchListService(category,kinds,offset);
			}
		}else {
			if(place!=null) {
				matchList = matchService.placeSearchService(category, place,offset);
			}else {
				matchList = matchService.dateSearchService(category, day1, day2,offset);
			}
		}
		**/
		
		return matchList;
	}
	
	@RequestMapping(value="/like")
	@ResponseBody
	public Map<String,Integer> like(@RequestBody Map<String,Object> param) {
		String id =(String) param.get("id");
		int blackListNo = (int) param.get("blackListNo");
		int check=likeService.myLikeService(blackListNo, id);
		if(check ==0) {
			likeService.insertLikeService(blackListNo, id);
		}else {
			likeService.deleteListService(blackListNo, id);
		}
		
		int countLike = likeService.countLikeService(blackListNo);
		int myLike= likeService.myLikeService(blackListNo, id);
		
		Map<String,Integer> map = new HashMap<String, Integer>();
		map.put("countLike", countLike);
		map.put("myLike", myLike);
		return map;
		
	}
}







