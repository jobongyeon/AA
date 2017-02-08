package com.library.eng.service;

import java.util.List;
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
		logger.debug(" Dao insertMember");
		return sqlSession.insert(NS+"memberAdd", member);
	}
	//회원추가위한 도서관목록조회
	public List<Library> selectLibcodeForInsert() {
		logger.debug(" Dao selectLibcodeForInsert");
		return sqlSession.selectList(NS+"selectMemberAdd");
	}
	//관리자 로그인 위한 관리자 조회
	public Admin selectAdminForLogin(String AdminId) {
		logger.debug(" Dao selectAdminForLogin");
		return sqlSession.selectOne(NS+"selectAdminLogin", AdminId);
	}
	//도서관 추가
	public int insertLibrary(Library library) {
		logger.debug(" Dao insertLibrary");
		return sqlSession.insert(NS+"libraryAdd", library);
	}
	//도서추가
	public int insertBook(Books book) {
		logger.debug(" Dao insertBook");
		return sqlSession.insert(NS+"bookAdd", book);
	}
	//도서폐기
	public int deleteBook(Discardbooks discardbooks) {
		logger.debug(" Dao deleteBook");
		return sqlSession.insert(NS+"bookDelete", discardbooks);
	}
	//도서대여상태수정
	public int updateBookStatus(Books book) {
		logger.debug(" Dao updateBookStatus");
		return sqlSession.update(NS+"updateBookStatus", book);
	}
	//도서대여
	public int insertRental(Rental rental) {
		logger.debug(" Dao insertRental", rental.toString());
		return sqlSession.insert(NS+"insertRental", rental);
	}
	/*public Cost selectCost(Cost cost) {
		logger.debug(" Dao selectCost"+cost.toString());
		return sqlSession.selectOne(NS+"selectCost", cost);
	}*/
	public int insertPayment(Payment payment) {
		logger.debug(" Dao insertPayment");
		return sqlSession.insert(NS+"insertPayment", payment);
	}
	
}