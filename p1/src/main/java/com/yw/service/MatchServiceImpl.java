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
	public List<MatchBoardVo> matchListService(String category,String kinds,String place,String day1,String day2,int offset) {
		return dao.matchList(category,kinds,place,day1,day2,offset);
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
	public List<MatchBoardVo> placeSearchService(String category, String place,int offset) {
		return dao.placeSearch(category, place,offset);
	}

	@Override
	public List<MatchBoardVo> dateSearchService(String category, String day1, String day2,int offset) {
		return dao.dateSearch(category, day1, day2,offset);
	}

	@Override
	public List<MatchBoardVo> sortDateService(String category,int offset) {
		return dao.sortDate(category,offset);
	}

	@Override
	public List<MatchBoardVo> matchListByIdService() {
		return dao.matchListById();
	}
}
