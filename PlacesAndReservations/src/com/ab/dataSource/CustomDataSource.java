package com.ab.dataSource;

import java.sql.SQLException;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class CustomDataSource {

	public CustomDataSource(){
		
	}
	
	public static JdbcTemplate getJdbcTemplate(){ 
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://127.0.0.1:3306/reservations_schema");
		dataSource.setUsername("danbog");
		dataSource.setPassword("welcome1");
	
		return new JdbcTemplate(dataSource); 
	}
	
	public static void closeConnection(JdbcTemplate jdbcTemplate) throws SQLException{
		jdbcTemplate.getDataSource().getConnection().close();
	}
}
