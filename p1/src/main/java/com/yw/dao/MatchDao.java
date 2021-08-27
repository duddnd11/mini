package com.yw.dao;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchDao {
	public void newMatch(MatchBoardVo vo);
	public List<MatchBoardVo> matchList(String category,String kinds,String place,String day1,String day2,int offset);
	public MatchBoardVo matchDetail(int mbno);
	public void updateState(int mbno);
	public List<MatchBoardVo> placeSearch(String category,String place,int offset);
	public List<MatchBoardVo> dateSearch(String category,String day1,String day2,int offset);
	public List<MatchBoardVo> sortDate(String category,int offset);
	public List<MatchBoardVo> matchListById();
}
