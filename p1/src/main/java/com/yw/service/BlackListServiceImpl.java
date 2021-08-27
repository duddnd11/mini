package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.BlackListDao;
import com.yw.vo.BlackListVo;

@Service
public class BlackListServiceImpl implements BlackListService{
	@Autowired
	BlackListDao dao;

	@Override
	public List<BlackListVo> blackListService() {
		return dao.blackList();
	}

	@Override
	public List<BlackListVo> blackListPageService(int offset) {
		return dao.blackListPage(offset);
	}

	@Override
	public List<BlackListVo> relatedBlackListService(int offset) {
		return dao.relatedBlackList(offset);
	}

	@Override
	public BlackListVo blackListDetailService(int no) {
		return dao.blackListDetail(no);
	}

	@Override
	public void blackListWriteService(BlackListVo vo) {
		dao.blackListWrite(vo);
	}

	@Override
	public void blackListModifyService(BlackListVo vo) {
		dao.blackListModify(vo);
	}

	@Override
	public void blackListDeleteService(int no) {
		dao.blackListDelete(no);
	}

	@Override
	public void updateHitCountService(int no) {
		dao.updateHitCount(no);
	}
}
