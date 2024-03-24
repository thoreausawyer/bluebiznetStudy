package com.blueBiznet.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardController {
		
		// 게시글 작성 화면
			@RequestMapping(value="/boardWriteView", method=RequestMethod.GET)
			public String getBoardWriteView() {
				
				return "board/boardWriteView";
			}
	
		// 게시글 작성하기
		@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
		public String insertBoard() {
			
			return "board/boardWrite";
		}
		
		// 게시물 불러오기
		@RequestMapping(value="/boardDetail", method=RequestMethod.GET)
		public String getBoardDetail() {
			
			return "board/boardDetail";
		}
		
		//게시글 수정 화면
		@RequestMapping(value="/boardUpdateView", method=RequestMethod.GET)
		public String updateBoardView() {
			
			return "board/boardUpdateView";
		}
		
		//게시글 수정
		@RequestMapping(value="/boardUpdate", method=RequestMethod.POST)
		public String updateBoard() {
			
			return "board/boardUpdate";
		}
		
		//게시글 삭제
			@RequestMapping(value="/boardDelete", method=RequestMethod.GET)
			public String deleteBoard() {
				
				return "board/boardDelete";
			}
		
			// 게시판 리스트 불러오기
			@RequestMapping(value="/boardList", method=RequestMethod.GET )
			public String getBoardList(){
				
				return "board/boardList";
			}
			
			// 게시판 메인 화면
			@RequestMapping(value="/boardMain", method=RequestMethod.GET)
			public String getBoardMain() {
				return "board/boardMain";
			}
			
			
			
}
