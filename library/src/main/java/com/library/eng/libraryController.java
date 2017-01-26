package com.library.eng;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.library.eng.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class libraryController {
	@Autowired
	private MemberService memberService;
	private static final Logger logger = LoggerFactory.getLogger(libraryController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value="/lib/memberHome", method=RequestMethod.GET )
	public String memberHome() {
		logger.debug(this.getClass()+"회원 메인페이지 GET실행");
		return "/memberHome";
	}
	@RequestMapping(value="/lib/memberAdd", method=RequestMethod.GET)
	public String memberAdd(Model model) {
		logger.debug(this.getClass()+"회원가입 페이지 GET실행");
		Map<String, Object> returnMap = memberService.getselectLibcodeForInsert();
		model.addAttribute("list", returnMap.get("list"));
		return "/memberAdd";
	}
	/*@RequestMapping(value="", )
	public String memberAdd(Member member) {
		
	}*/
	
}
