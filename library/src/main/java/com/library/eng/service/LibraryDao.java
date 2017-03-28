package com.library.eng.service;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.library.eng.libraryController;
import com.library.eng.service.Vo.Admin;
import com.library.eng.service.Vo.Books;
import com.library.eng.service.Vo.Discardbooks;
import com.library.eng.service.Vo.Library;
import com.library.eng.service.Vo.Member;
import com.library.eng.service.Vo.Payment;
import com.library.eng.service.Vo.Rental;

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
	//관리자 도서 관리 도서 폐기 : 도서관리 - 도서폐기 도서폐기전 ajax로 도서 정보 가져오기
	public Books adminBookInfo(int BOOKCODE) {
		logger.debug(" Dao adminBookInfo");
		return sqlSession.selectOne(NS+"adminBookInfo", BOOKCODE);
	}
	//도서대여상태수정
	public int updateBookStatus(Books book) {
		logger.debug(" Dao updateBookStatus");
		return sqlSession.update(NS+"updateBookStatus", book);
	}
	
	//관리자 도서대여/반납 관리 : 도서관리 - 도서대여/반납관리 - 도서대여 전 회원아이디 입력시 ajax로 회원정보 가져오기
	public Member memberRentalInfo(String MEMBERID) {
		logger.debug(" Dao memberRentalInfo");
		return sqlSession.selectOne(NS+"memberRentalInfo", MEMBERID);
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
	
	//관리자 메인페이지 : 도서대출현황
	public List<Rental> selectRentalList() {
		logger.debug(" Dao selectRentalList");
		return sqlSession.selectList(NS+"selectRentalList");
	}
	
	//관리자 메인페이지 : 대여현황
	public Rental ReturnBookCount() {
		logger.debug(" Dao ReturnBookCount");
		return sqlSession.selectOne(NS+"ReturnBookCount");
	}
	
	//관리자 메인페이지 : 도서폐기예정현황
	public Discardbooks disCardBooksCount() {
		logger.debug(" Dao disCardBooksCount");
		return sqlSession.selectOne(NS+"disCardBooksCount");
	}
	
	//관리자 메인페이지 : 회원전체카운트
	public Member memberCount() {
		logger.debug(" Dao memberCount");
		return sqlSession.selectOne(NS+"memberCount");
	}
	
	//관리자 메인페이지 : 전체도서관 카운트
	public Library libraryCount() {
		logger.debug(" Dao libraryCount");
		return sqlSession.selectOne(NS+"libraryCount");
	}
	
	//관리자 회원관리 : 회원관리 - 회원리스트 조회
	public List<Member> adminMemberList() {
		logger.debug(" Dao libraryCount");
		return sqlSession.selectList(NS+"adminMemberList");
	}
}