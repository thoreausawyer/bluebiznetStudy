package com.thoreausawyer.board.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thoreausawyer.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	BoardService boardService; 

	// Logger를 꼭 사용해야하나? -> 에러시 활용도 올라감
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
		
	@RequestMapping(value = "/main", method = RequestMethod.GET)
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
		return "main";
	}
	
	// 게시글 리스트
	@RequestMapping(value="/boardList", method= RequestMethod.GET)
	public String boardList() {
		return "boardList"; 
	}
	
	// 게시글 작성 view
	@RequestMapping(value="/boardWrite", method= RequestMethod.GET)
	public String boardWriteView() {
		
	    return "boardWriteView"; 
	}
	
	// 게시글 작성 post
	@RequestMapping(value="/boardWrite", method= RequestMethod.POST)
	public String boardWrite() {
		
	    return "boardWrite"; 
	}
	
	//게시글 삭제
	@RequestMapping(value="/boardDelete", method=RequestMethod.GET)
	public String boardDelete() {
		
		return "boardDelete";
	}
		
	
	//게시글 수정
	@RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
	public String boardUpdate() {
		
		return "boardUpdate";
	}
	
}
