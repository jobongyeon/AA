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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.library.eng.service.Vo.Admin;
import com.library.eng.service.Vo.Books;
import com.library.eng.service.Vo.Cost;
import com.library.eng.service.Vo.Discardbooks;
import com.library.eng.service.Vo.Library;
import com.library.eng.service.Vo.Member;
import com.library.eng.service.Vo.Payment;
import com.library.eng.service.Vo.Rental;
import com.library.eng.service.LibraryService;

@Controller
public class libraryController {
	@Autowired
	private LibraryService service;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	
	/*********************************************************************
	 회원
	**********************************************************************/
	
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
		//회원가입전 도서관 리스트 조회
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
	
	/*********************************************************************
	 관리자로그인
	**********************************************************************/
	
	//관리자 로그인페이지 : 관리자 로그인화면 
	@RequestMapping(value="/lib/adminLogin", method=RequestMethod.GET)
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
	
	//관리자 로그아웃 : 상단메뉴 로그아웃 버튼 클릭시 세션종료 및 로그인 화면으로 이동
	@RequestMapping(value="/lib/adminLogout", method=RequestMethod.GET)
	public String adminLogout(HttpSession session){
		logger.debug("관리자 로그아웃 GET실행");
		session.invalidate();
		return "/adminLogin";
	}
	
	/*********************************************************************
	 관리자
	**********************************************************************/
	
	//관리자 메인페이지 : 관리자 메인페이지로 이동
	@RequestMapping(value="/lib/adminHome", method=RequestMethod.GET)
	public String adminHome(Model model) {
		//진입시 로그
		logger.debug("관리자 메인페이지 GET실행");
		//관리자 메인페이지 : 도서대출현황
		List<Rental> RentalList = service.selectRentalList();
		logger.debug("화면으로 보낼 미납자 리스트내용 : "+RentalList.toString());
		model.addAttribute("RentalList", RentalList);
		//도서대여 카운트
		Rental ReturnBookCount = service.ReturnBookCount();
		model.addAttribute("ReturnBookCount", ReturnBookCount);
		logger.debug("ReturnBookCount : "+ReturnBookCount);
		//도서폐기예정 카운트
		Discardbooks disCardBooksCount = service.disCardBooksCount();
		model.addAttribute("disCardBooksCount", disCardBooksCount);
		logger.debug("disCardBooksCount : "+disCardBooksCount);
		//회원전체 카운트
		Member memberCount = service.memberCount();
		model.addAttribute("memberCount", memberCount);
		logger.debug("memberCount : "+memberCount);
		//전체도서관 카운트
		Library libraryCount = service.libraryCount();
		model.addAttribute("libraryCount", libraryCount);
		logger.debug("libraryCount : "+libraryCount);
		return "/adminHome";
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
	
	//관리자 도서 관리 도서등록 : 도서관리 - 도서목록
	@RequestMapping(value="/lib/adminBooksList", method=RequestMethod.GET)
	public String adminBookList(Model model) {
		logger.debug("관리자 도서관리 도서목록 GET실행");
		List<Books> adminBooksList = service.adminBooksList();
		model.addAttribute("adminBooksList", adminBooksList);
		return "/adminBooksList";
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
	
	//관리자 도서 관리 도서 폐기 : 도서관리 - 도서폐기 도서폐기전 ajax로 도서 정보 가져오기
	@RequestMapping(value="/lib/adminBookInfo", method=RequestMethod.POST)
	public @ResponseBody Books adminBookInfo(@RequestParam int BOOKCODE) {
		logger.debug("관리자 도서관리 도서폐기 전 도서정보 조회 POST실행");
		Books adminBookInfo = service.adminBookInfo(BOOKCODE);
		logger.debug("adminBookInfo : "+adminBookInfo.toString());	//test log
		logger.debug(adminBookInfo.toString());
		return adminBookInfo;
	}
	
	//관리자 도서대여/반납 관리 : 도서관리 - 도서대여/반납관리 메뉴 클릭시 도서대여화면으로 이동
	@RequestMapping(value="/lib/adminRental", method=RequestMethod.GET)
	public String adminRental(Model model) {
		logger.debug("관리자 도서대여/반납 도서대여 GET실행");
		return "/adminRental";
	}
	
	//관리자 도서대여/반납 관리 : 도서관리 - 도서대여/반납관리 - 도서대여 전 회원아이디 입력시 ajax로 회원정보 가져오기
	@RequestMapping(value="/lib/memberRentalInfo", method=RequestMethod.POST)
	public @ResponseBody Member memberRentalInfo(@RequestParam String MEMBERID) {
		logger.debug("관리자 도서관리 도서폐기 전 도서정보 조회 POST실행");
		Member memberRentalInfo = service.memberRentalInfo(MEMBERID);
		logger.debug("memberRentalInfo : "+memberRentalInfo);
		return memberRentalInfo;
	}
	
	//관리자 도서대여/반납 관리 : 도서관리 - 도서대여/반납관리 - 도서대여등록
	@RequestMapping(value="/lib/adminRental", method=RequestMethod.POST)
	public String adminRental(Rental rental, Books book, Cost cost, Payment payment) {
		logger.debug("관리자 도서대여/반납 도서대여 POST실행");
		service.addRental(rental);
		logger.debug(rental.toString());
		service.updateBookStatus(book);
		/*service.selectCostForPayment(cost);*/
		payment.setRENTALCODE(rental.getRENTALCODE());
		service.addPayment(payment);
		return "redirect:adminHome";
	}
	
	//관리자 회원관리 : 회원관리 - 회원리스트 조회
	@RequestMapping(value="/lib/adminMemberList", method=RequestMethod.GET)
	public String adminMemberList(Model model) {
		logger.debug("관리자 회원리스트 GET실행");
		List<Member> adminMemberList = service.adminMemberList();
		logger.debug("adminMemberList : "+adminMemberList);
		model.addAttribute("adminMemberList", adminMemberList);
		return "/adminMemberList";
	}
}