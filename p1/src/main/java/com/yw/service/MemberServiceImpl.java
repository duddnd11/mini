package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.yw.dao.MemberDao;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;
	
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder; 
	
	@Override
	public void insertMemberService(MemberVo vo) {
		String encodedPassword = bCryptPasswordEncoder.encode(vo.getPassword());
		vo.setPassword(encodedPassword);
		dao.insertMember(vo);
	}

	@Override
	public List<MatchBoardVo> myMatchService(String id) {
		return dao.myMatch(id);
	}

	@Override
	public List<MatchBoardVo> myMercenaryService(String id) {
		return dao.myMercenary(id);
	}

	@Override
	public List<MatchBoardVo> myMatchApplyService(String id) {
		return dao.myMatchApply(id);
	}

	@Override
	public List<MatchBoardVo> myMercenaryApplyService(String id) {
		return dao.myMercenaryApply(id);
	}

	@Override
	public void userModifyService(MemberVo vo) {
		if(vo.getPassword().equals("")) {
			dao.userModify(vo);
		}else {
			String encodedPassword = bCryptPasswordEncoder.encode(vo.getPassword());
			vo.setPassword(encodedPassword);
			dao.userModifyWithPw(vo);
		}
	}
}
