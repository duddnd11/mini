package com.yw.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.yw.vo.NoticeVo;

public class NoticeDaoImpl implements NoticeDao{
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<NoticeVo> noticeList() {
		return sqlSession.selectList("com.yw.mapper.NoticeMapper.noticeList");
	}

	@Override
	public NoticeVo noticeDetail(int no) {
		return sqlSession.selectOne("com.yw.mapper.NoticeMapper.noticeDetail", no);
	}

	@Override
	public void noticeWrite(NoticeVo vo) {
		sqlSession.insert("com.yw.mapper.NoticeMapper.noticeWrite", vo);
	}

	@Override
	public void noticeModify(NoticeVo vo) {
		sqlSession.update("com.yw.mapper.NoticeMapper.noticeModify", vo);
	}

	@Override
	public void noticeDelete(int no) {
		sqlSession.delete("com.yw.mapper.NoticeMapper.noticeDelete", no);
	}

	@Override
	public void updateHitCount(int no) {
		sqlSession.update("com.yw.mapper.NoticeMapper.updateHitCount", no);
	}

	@Override
	public List<NoticeVo> noticeListPage(int offset) {
		return sqlSession.selectList("com.yw.mapper.NoticeMapper.noticeListPage",offset);
	}

	@Override
	public List<NoticeVo> relatedNotice(int offset) {
		return sqlSession.selectList("com.yw.mapper.NoticeMapper.relatedNotice",offset);
	}

}
