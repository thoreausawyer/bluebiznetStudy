package com.blueBiznet.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blueBiznet.board.dto.BoardDto;
import com.blueBiznet.board.mapper.BoardMapper;

@Service("boardService")
public class BoardServiceImplement implements BoardService {
	
	@Autowired
	private BoardMapper boardMapper;

	@Override
	public void insertBoard(BoardDto dto) {
		boardMapper.insertBoard(dto);
	}

	@Override
	public BoardDto getBoardDetail(Long num) {
		return boardMapper.getBoardDetail(num);
	}

	@Override
	public boolean updateBoard(BoardDto dto) {
		
		return boardMapper.updateBoard(dto) == 1;
	}

	@Override
	public boolean deleteBoard(Long num) {
		
		return boardMapper.deleteBoard(num) == 1;
	}

	@Override
	public List<BoardDto> getBoardList() {

		return boardMapper.getBoardList();
	}
	
	

}
