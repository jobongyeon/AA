package com.library.eng.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.library.eng.libraryController;

@Service
public class MemberService {
	@Autowired
	private MemberDao memberDao;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	//회원가입 폼에서 도서관 리스트 보여주는 메서드
	public List<Library> getselectLibcodeForInsert() {
		logger.debug(this.getClass()+"getselectLibcodeForInsert");
		List<Library> list = memberDao.selectLibcodeForInsert();
		logger.debug(list.toString());
		return list;
	}
	//회원가입 메서드
	public int addMember(Member member) {
		return memberDao.insertMember(member);
	}
}
