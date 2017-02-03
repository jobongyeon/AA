package com.library.eng;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.library.eng.service.Admin;
import com.library.eng.service.Books;
import com.library.eng.service.Discardbooks;
import com.library.eng.service.Library;
import com.library.eng.service.Member;
import com.library.eng.service.Rental;
import com.library.eng.service.LibraryService;

@Controller
public class libraryController {
	@Autowired
	private LibraryService service;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	//회원 메인페이지 : 회원가입 전 회비를 납부하는 회원과 미납부 회원 차이점 설명 및 납부회원조건 설명
	@RequestMapping(value="/lib/memberHome", method=RequestMethod.GET )
	public String memberHome() {
		logger.debug("회원 메인페이지 GET실행");
		return "/memberHome";
	}
	//회원 가입페이지 도서관 목록 조회 : 회원가입시 도서관 리스트 조회하는 메서드
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.GET)
	public String selectLibcodeForMemberAdd(Model model) {
		logger.debug("회원가입 페이지 GET실행");
		List<Library> LibcodeList = service.getselectLibcodeForInsert();
		model.addAttribute("list", LibcodeList);
		return "/memberAdd";
	}
	//회원 가입페이지 가입처리 : 회원가입 처리하는 메서드
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.POST)
	public String memberAdd(Member member) {
		logger.debug("회원가입 페이지 POST실행");
		service.addMember(member);
		return "redirect:memberHome";
	}
	//관리자 로그인페이지 : 관리자 로그인화면 
	@RequestMapping(value="/lib/adminLogin", method=RequestMethod.GET )
	public String adminLoginView() {
		logger.debug("관리자 메인페이지 GET실행");
		return "/adminLogin";
	}
	//관리자 로그인페이지 : 관리자 로그인 처리 및 세션 처리
	@RequestMapping(value="/lib/adminLogin", method=RequestMethod.POST)
	public String adminLogin(HttpSession session, Admin admin){
		Admin adminList = service.getSelectAdminForLogin(admin);
		logger.debug("관리자 로그인 POST실행");
		if(adminList == null) {
			return "/adminLogin";
		} else {
			session.setAttribute("adminId", adminList.getADMINID());
			session.setAttribute("adminPw", adminList.getADMINPW());
			return "redirect:adminHome";
		}
	}
	//관리자 메인페이지 : 관리자 메인페이지로 이동
	@RequestMapping(value="/lib/adminHome", method=RequestMethod.GET)
	public String adminHome() {
		logger.debug("관리자 메인페이지 GET실행");
		return "/adminHome";
	}
	//관리자 로그아웃 : 상단메뉴 로그아웃 버튼 클릭시 세션종료 및 로그인 화면으로 이동
	@RequestMapping(value="/lib/adminLogout", method=RequestMethod.GET)
	public String adminLogout(HttpSession session){
		logger.debug("관리자 로그아웃 GET실행");
		session.invalidate();
		return "/adminLogin";
	}
	//관리자 도서관 관리 : 상단 도서관관리 메뉴 클릭시 도서관관리화면으로 이동
	@RequestMapping(value="/lib/adminLibrary", method=RequestMethod.GET)
	public String adminLibraryView() {
		logger.debug("관리자 도서관관리 GET실행");
		return "/adminLibrary";
	}
	//관리자 도서관 관리 도서관등록 : 도서관관리-도서관등록
	@RequestMapping(value="/lib/adminLibraryInsert", method=RequestMethod.POST)
	public String adminLibraryInsert(Library library) {
		logger.debug("관리자 도서관관리 도서관 추가 POST실행");
		service.addLibrary(library);
		return "redirect:adminHome";
	}
	//관리자 도서 관리 : 상단 도서관리 메뉴 클릭시 도서관리화면으로 이동
	@RequestMapping(value="/lib/adminBook", method=RequestMethod.GET)
	public String adminBookView(Model model) {
		logger.debug("관리자 도서관리  GET실행");
		List<Library> LibcodeList = service.getselectLibcodeForInsert();
		model.addAttribute("list", LibcodeList);
		return "/adminBook";
	}
	//관리자 도서 관리 도서등록 : 도서관리 - 도서등록
	@RequestMapping(value="/lib/adminBook", method=RequestMethod.POST)
	public String adminBookInsert(Books book) {
		logger.debug("관리자 도서관리 도서추가 POST실행");
		service.addBook(book);
		return "redirect:adminHome";
	}
	//관리자 도서 관리 : 상단 도서관리 메뉴 클릭시 도서폐기화면으로 이동
	@RequestMapping(value="/lib/adminBookDelete", method=RequestMethod.GET)
	public String adminBookDelete() {
		logger.debug("관리자 도서관리 도서폐기 GET실행");
		return "/adminBookDelete";
	}
	//관리자 도서 관리 도서등록 : 도서관리 - 도서폐기 폐기등록과 도서대여상태수정
	@RequestMapping(value="/lib/adminBookDelete", method=RequestMethod.POST)
	public String adminBookDelete(Discardbooks discardbooks, Books book) {
		logger.debug("관리자 도서관리 도서폐기 POST실행");
		service.deleteBook(discardbooks);
		service.updateBookStatus(book);
		return "redirect:adminHome";
	}
	//관리자 도서대여/반납 관리 : 상단 도서대여/반납관리 메뉴 클릭시 도서대여화면으로 이동
	@RequestMapping(value="/lib/adminRental", method=RequestMethod.GET)
	public String adminRental() {
		logger.debug("관리자 도서대여/반납 도서대여 GET실행");
		return "/adminRental";
	}
	//관리자 도서대여/반납 관리 : 상단 도서대여/반납관리 - 도서대여등록
	@RequestMapping(value="/lib/adminRental", method=RequestMethod.POST)
	public String adminRental(Rental rental, Books book) {
		logger.debug("관리자 도서대여/반납 도서대여 POST실행");
		service.addRental(rental);
		service.updateBookStatus(book);
		/*service.selectRentalCode(rental);*/
		return "redirect:adminHome";
	}
}
