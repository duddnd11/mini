package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.MatchDao;
import com.yw.vo.MatchBoardVo;

@Service
public class MatchServiceImpl implements MatchService{
	@Autowired
	MatchDao dao;
	
	@Override
	public void newMatchService(MatchBoardVo vo) {
		dao.newMatch(vo);
	}

	@Override
	public List<MatchBoardVo> matchListService(String category) {
		return dao.matchList(category);
	}

	@Override
	public MatchBoardVo matchDetailService(int mbno) {
		return dao.matchDetail(mbno);
	}

	@Override
	public void updateStateService(int mbno) {
		dao.updateState(mbno);
	}

	@Override
	public List<MatchBoardVo> placeSearchService(String category, String place) {
		return dao.placeSearch(category, place);
	}

	@Override
	public List<MatchBoardVo> dateSearchService(String category, String day1, String day2) {
		return dao.dateSearch(category, day1, day2);
	}
}
