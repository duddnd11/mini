package com.yw.service;

import java.util.List;

import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

public interface MemberService {
	public void insertMemberService(MemberVo vo);
	public List<MatchBoardVo> myMatchService(String id);
	public List<MatchBoardVo> myMercenaryService(String id);
	public List<MatchBoardVo> myMatchApplyService(String id);
	public List<MatchBoardVo> myMercenaryApplyService(String id);
}
