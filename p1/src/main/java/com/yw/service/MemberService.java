package com.yw.service;

import java.util.List;

import com.yw.security.CustomUserDetail;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

public interface MemberService {
	public void insertMemberService(MemberVo vo);
	public List<MatchBoardVo> myMatchService(String id);
	public List<MatchBoardVo> myMercenaryService(String id);
	public List<MatchBoardVo> myMatchApplyService(String id);
	public List<MatchBoardVo> myMercenaryApplyService(String id);
	public void userModifyService(MemberVo vo);
	public List<CustomUserDetail> findIdService(String name, String phoneNum);
	public int findPwService(String id, String phoneNum,String email);
	public void newPwService(String id, String password);
}
