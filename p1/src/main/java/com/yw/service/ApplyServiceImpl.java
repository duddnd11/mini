package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.ApplyDao;
import com.yw.vo.ApplyVo;

@Service
public class ApplyServiceImpl implements ApplyService {
	@Autowired
	ApplyDao dao;
	
	@Override
	public void applyService(ApplyVo vo) {
		dao.apply(vo);
	}

	@Override
	public int checkApplyService(int mbno, String id) {
		return dao.checkApply(id, mbno);
	}

	@Override
	public List<ApplyVo> applyListService(int mbno) {
		return dao.applyList(mbno);
	}

	@Override
	public void updateStateService(int applyno) {
		dao.updateState(applyno);
	}

	@Override
	public void updateStateFailService(int applyno, int mbno) {
		dao.updateStateFail(applyno, mbno);
	}
}
