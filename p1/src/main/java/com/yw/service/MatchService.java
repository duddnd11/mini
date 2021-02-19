package com.yw.service;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchService {
	public void newMatchService(MatchBoardVo vo);
	public List<MatchBoardVo> matchListService(String category);
	public MatchBoardVo matchDetailService(int mbno);
	public void updateStateService(int mbno);
	public List<MatchBoardVo> placeSearchService(String category,String place);
	public List<MatchBoardVo> dateSearchService(String category,String day1,String day2);
	
}
