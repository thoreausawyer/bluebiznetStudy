package com.thoreausawyer.board.sample;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:root-context.xml"})// 어떤 설정을 이용할 것인지.
public class DITests {
	
	@Autowired // 이 타입의 객체가 필요한데 네가 좀 찔러줄래?
	Restaurant restaurant;
	
	@Autowired
	DataSource dataSource;
	
	@Test
	public void testCon() throws Exception{
		
		Connection con = dataSource.getConnection();
		
		System.out.println(con);
		
		// close하는 습관!!!
		con.close();
		
	}

	@Test
	public void testExist() {
		System.out.println(restaurant);
		System.out.println("오긴하나??");
	}
	
}
