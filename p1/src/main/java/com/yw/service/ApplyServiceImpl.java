package com.yw.service;

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
}
