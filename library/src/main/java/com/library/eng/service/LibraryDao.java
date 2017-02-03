package com.library.eng.service;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.library.eng.libraryController;

@Repository
public class LibraryDao {
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NS = "com.library.eng.";
	//회원추가
	public int insertMember(Member member) {
		logger.debug(" MemberDao insertMember");
		return sqlSession.insert(NS+"memberAdd", member);
	}
	//회원추가위한 도서관목록조회
	public List<Library> selectLibcodeForInsert() {
		logger.debug(" MemberDao selectLibcodeForInsert");
		return sqlSession.selectList(NS+"selectMemberAdd");
	}
	//관리자 로그인 위한 관리자 조회
	public Admin selectAdminForLogin(String AdminId) {
		logger.debug(" MemberDao selectAdminForLogin");
		return sqlSession.selectOne(NS+"selectAdminLogin", AdminId);
	}
	//도서관 추가
	public int insertLibrary(Library library) {
		logger.debug(" MemberDao insertLibrary");
		return sqlSession.insert(NS+"libraryAdd", library);
	}
	//도서추가
	public int insertBook(Books book) {
		logger.debug(" MemberDao insertBook");
		return sqlSession.insert(NS+"bookAdd", book);
	}
	//도서폐기
	public int deleteBook(Discardbooks discardbooks) {
		logger.debug(" MemberDao deleteBook");
		return sqlSession.insert(NS+"bookDelete", discardbooks);
	}
	//도서폐기시 도서대여상태수정
	public int updateBookStatus(Books book) {
		logger.debug(" MemberDao updateBookStatus");
		return sqlSession.update(NS+"updateBookStatus", book);
	}
	public int insertRental(Rental rental) {
		logger.debug(" MemberDao insertRental");
		return sqlSession.insert(NS+"insertRental", rental);
	}
}
