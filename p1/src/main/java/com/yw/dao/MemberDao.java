package com.yw.dao;

import java.util.List;

import com.yw.security.CustomUserDetail;
import com.yw.vo.MatchBoardVo;
import com.yw.vo.MemberVo;

public interface MemberDao {
	public void insertMember(MemberVo vo);
	public CustomUserDetail getUserById(String id);
	public List<MatchBoardVo> myMatch(String id);
	public List<MatchBoardVo> myMercenary(String id);
	public List<MatchBoardVo> myMatchApply(String id);
	public List<MatchBoardVo> myMercenaryApply(String id);
	public void userModify(MemberVo vo);
	public void userModifyWithPw(MemberVo vo);
	public List<CustomUserDetail> findId(String name,String phoneNum);
	public int findPw(String id, String phoneNum, String email);
	public void newPw(String id,String password);
	public List<CustomUserDetail> memberList();
}
