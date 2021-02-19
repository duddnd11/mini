package com.yw.dao;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchDao {
	public void newMatch(MatchBoardVo vo);
	public List<MatchBoardVo> matchList(String category);
	public MatchBoardVo matchDetail(int mbno);
	public void updateState(int mbno);
	public List<MatchBoardVo> placeSearch(String category,String place);
	public List<MatchBoardVo> dateSearch(String category,String day1,String day2);
}
