package com.thoreausawyer.board.service;

import java.util.ArrayList;

import com.thoreausawyer.board.dto.BoardDto;

public interface BoardService {
	
	// 리스트 불러오기
	public ArrayList<BoardDto> getBoardList();
	
	// 게시글 작성하기
	public void insertBoard(BoardDto dto);
}
