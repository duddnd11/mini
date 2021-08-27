package com.yw.service;

import java.util.List;

import com.yw.vo.NoticeVo;

public interface NoticeService {
	public List<NoticeVo> noticeListService();
	public NoticeVo noticeDetailService(int no);
	public void noticeWriteService(NoticeVo vo);
	public void noticeModifyService(NoticeVo vo);
	public void noticeDeleteService(int no);
	public void updateHitCount(int no);
	public List<NoticeVo> noticeListPageService(int offset);
	public List<NoticeVo> relatedNotice(int offset);
}
