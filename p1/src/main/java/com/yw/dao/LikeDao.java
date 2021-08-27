package com.yw.dao;

public interface LikeDao {
	public void insertLike(int blacklistno,String id);
	public void deleteList(int blacklistno,String id);
	public int countLike(int blacklistno);
	public int myLike(int blacklistno, String id);
}
