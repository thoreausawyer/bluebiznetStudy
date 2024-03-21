package com.thoreausawyer.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory; // SLF4J의 LoggerFactory 클래스를 임포트합니다.
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 애플리케이션 홈 페이지에 대한 요청을 처리합니다.
 */
@Controller
public class HomeController {
	
	// SLF4J에서 사용할 Logger 객체를 선언합니다.
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 홈 뷰를 선택하여 렌더링하기 위해 그 이름을 반환합니다.
	 */
	@RequestMapping(value = "/aaa", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		// 로거를 사용하여 클라이언트 로캘 정보를 로깅합니다.
		logger.info("환영합니다! 클라이언트 로캘은 {}입니다.", locale);
		
		// 현재 시간을 가져오고, 해당 로캘 정보로 날짜와 시간을 형식화합니다.
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		// 형식화된 날짜와 시간을 모델에 추가합니다.
		model.addAttribute("serverTime", formattedDate );
		
		// "home"을 반환하여 Spring에게 홈 뷰를 렌더링하도록 지시합니다.
		return "home";
	}
	
}
