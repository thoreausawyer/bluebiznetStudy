package com.thoreausawyer.board.sample;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTests {

	@Test
	public void testConnection() throws Exception{
		// DB Driver Class
		/*Class.forName("org.oracledb.jdbc.Driver");*/
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// URL
		Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","thoreausawyer","daegumian");
		
		System.out.println(connection);
	
		connection.close();
		
	
	}
}
