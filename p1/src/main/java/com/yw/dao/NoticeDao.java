package com.yw.dao;

import java.util.List;

import com.yw.vo.NoticeVo;

public interface NoticeDao {
	public List<NoticeVo> noticeList();
	public List<NoticeVo> noticeListPage(int offset);
	public List<NoticeVo> relatedNotice(int offset);
	public NoticeVo noticeDetail(int no);
	public void noticeWrite(NoticeVo vo);
	public void noticeModify(NoticeVo vo);
	public void noticeDelete(int no);
	public void updateHitCount(int no);
}
