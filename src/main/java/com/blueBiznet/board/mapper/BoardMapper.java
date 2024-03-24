package com.blueBiznet.board.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.blueBiznet.board.dto.BoardDto;


public interface BoardMapper {
	
		// 리스트 불러오기
		@Select("SELECT * FROM board WHERE num > 0")
		public ArrayList<BoardDto> getBoardList();
		
		// 게시글 작성하기
		public void insertBoard(BoardDto dto);
		
		// num 예외
		public void insertSelectKey(BoardDto dto);
		
		// 게시물 불러오기
		public BoardDto getBoardDetail(Long num);
		
		// 특정 게시물 삭제
		public int deleteBoard(Long num);
		
		// 게시물 업데이트
		public int updateBoard(BoardDto dto);
		
}
