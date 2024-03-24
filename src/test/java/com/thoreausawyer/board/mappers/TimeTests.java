package com.thoreausawyer.board.mappers;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thoreausawyer.board.mappers2.TimeMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:root-context.xml"})// 어떤 설정을 이용할 것인지.
public class TimeTests {
	
	@Autowired
	TimeMapper timeMapper;
	
	@Test
	public void test1() {
		
	}

}
