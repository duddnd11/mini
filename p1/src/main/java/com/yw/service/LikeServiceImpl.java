package com.yw.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yw.dao.LikeDao;

@Service
public class LikeServiceImpl implements LikeService{
	@Autowired
	LikeDao dao;

	@Override
	public void insertLikeService(int blacklistno, String id) {
		dao.insertLike(blacklistno, id);
	}

	@Override
	public void deleteListService(int blacklistno, String id) {
		dao.deleteList(blacklistno, id);
	}

	@Override
	public int countLikeService(int blacklistno) {
		return dao.countLike(blacklistno);
	}

	@Override
	public int myLikeService(int blacklistno, String id) {
		return dao.myLike(blacklistno, id);
	}

}
