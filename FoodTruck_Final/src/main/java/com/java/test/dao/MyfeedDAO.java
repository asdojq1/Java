package com.java.test.dao;

import java.util.List;

import com.java.test.domain.MemberVO;

public interface MyfeedDAO {

	void insertFeed(MemberVO vo);
	List<MemberVO> ListFeed(MemberVO vo);
	void deleteFeed(MemberVO vo);
	void deleteOneComm(MemberVO vo);
	MemberVO selectFeed(MemberVO vo);
	void updateFeed(MemberVO vo);
	void deletPhoto(MemberVO vo);
	void feedCommentInsert(MemberVO vo);
	List<List<MemberVO>> Listtest(MemberVO vo);
}
