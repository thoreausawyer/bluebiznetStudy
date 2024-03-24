package com.blueBiznet.board.service;

import java.util.List;

import com.blueBiznet.board.dto.BoardDto;

public interface BoardService {
	
	public void insertBoard(BoardDto dto);
	
	public BoardDto getBoardDetail(Long num);
	
	public boolean updateBoard(BoardDto dto);
	
	public boolean deleteBoard(Long num);
	
	public List<BoardDto> getBoardList();

}
