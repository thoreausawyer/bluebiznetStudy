package com.thoreausawyer.board.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thoreausawyer.board.dto.BoardDto;
import com.thoreausawyer.board.mappers.BoardMapper;

// Service경로지정을 안해줘도 된다.
@Service("boardService")
public class BoardServiceImplement implements BoardService {

	@Autowired
	private BoardMapper  boardMapper;
	
	// 리스트 불러오기
	@Override
	public ArrayList<BoardDto> getBoardList() {
		return boardMapper.getBoardList();
	}
	// 게시글 작성하기
	@Override
	public void insertBoard(BoardDto dto) {
		 boardMapper.insertBoard(dto);
	}
	
}
