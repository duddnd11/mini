package com.yw.service;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchService {
	public void newMatchService(MatchBoardVo vo);
	public List<MatchBoardVo> matchListService(String category,String kinds,String place,String day1,String day2,int offset);
	public MatchBoardVo matchDetailService(int mbno);
	public void updateStateService(int mbno);
	public List<MatchBoardVo> placeSearchService(String category,String place,int offset);
	public List<MatchBoardVo> dateSearchService(String category,String day1,String day2,int offset);
	public List<MatchBoardVo> sortDateService(String category,int offset);
	public List<MatchBoardVo> matchListByIdService();
}
