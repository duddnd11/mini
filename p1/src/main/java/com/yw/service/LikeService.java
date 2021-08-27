package com.yw.service;

public interface LikeService {
	public void insertLikeService(int blacklistno,String id);
	public void deleteListService(int blacklistno,String id);
	public int countLikeService(int blacklistno);
	public int myLikeService(int blacklistno,String id);
}
