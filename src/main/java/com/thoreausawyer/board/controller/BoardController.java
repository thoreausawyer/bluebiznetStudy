package com.thoreausawyer.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thoreausawyer.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	@Qualifier("boardService")
	BoardService boardService; 
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main() {
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
