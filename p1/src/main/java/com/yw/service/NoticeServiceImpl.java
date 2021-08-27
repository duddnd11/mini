package com.yw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.NoticeDao;
import com.yw.vo.NoticeVo;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	NoticeDao dao;
	
	@Override
	public List<NoticeVo> noticeListService() {
		return dao.noticeList();
	}

	@Override
	public NoticeVo noticeDetailService(int no) {
		return dao.noticeDetail(no);
	}

	@Override
	public void noticeWriteService(NoticeVo vo) {
		dao.noticeWrite(vo);
	}

	@Override
	public void noticeModifyService(NoticeVo vo) {
		dao.noticeModify(vo);
	}

	@Override
	public void noticeDeleteService(int no) {
		dao.noticeDelete(no);
	}

	@Override
	public void updateHitCount(int no) {
		dao.updateHitCount(no);
	}

	@Override
	public List<NoticeVo> noticeListPageService(int offset) {
		return dao.noticeListPage(offset);
	}

	@Override
	public List<NoticeVo> relatedNotice(int offset) {
		return dao.relatedNotice(offset);
	}
}
