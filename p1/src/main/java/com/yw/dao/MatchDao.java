package com.yw.dao;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchDao {
	public void newMatch(MatchBoardVo vo);
	public List<MatchBoardVo> matchList(String category);
	public MatchBoardVo matchDetail(int mbno);
}
