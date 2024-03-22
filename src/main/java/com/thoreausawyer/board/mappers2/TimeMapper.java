package com.thoreausawyer.board.mappers2;

import org.apache.ibatis.annotations.Select;

import java.sql.Timestamp;

public interface TimeMapper {

    @Select("SELECT CURRENT_TIMESTAMP FROM DUAL")
    Timestamp getTime();
	
	//	실체가 없는데, 스프링이 실제 객체를 만들어서 사용해준다. 
	// 그러므로 우리는 인터페이스만 만들어주면된다.
	
}
