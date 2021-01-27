package com.yw.service;

import java.util.List;

import com.yw.vo.MatchBoardVo;

public interface MatchService {
	public void newMatchService(MatchBoardVo vo);
	public List<MatchBoardVo> matchListService(String category);
	public MatchBoardVo matchDetailService(int mbno);
	public void updateStateService(int mbno);
}
