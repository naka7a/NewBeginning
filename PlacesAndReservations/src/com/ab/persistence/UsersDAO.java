package com.ab.persistence;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.ab.dataSource.CustomDataSource;
import com.ab.dto.RestaurantRegistrationDTO;
import com.ab.model.Restaurant;
import com.ab.model.User;

@Component
public class UsersDAO {
	

	private JdbcTemplate jdbcTemplate;
	
	public UsersDAO(){
	
		jdbcTemplate = CustomDataSource.getJdbcTemplate();
		
	}
	


	public class UserRowMapper implements RowMapper<User>
    {
    	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
    		 
    	    System.out.println("rowNum:"+rowNum);
    		String name = rs.getString("USERNAME");
    		int id=rs.getInt("USER_ID");
    		String email  = rs.getString("EMAIL");
    		User user = new User(name,email,id);
    		return user;
		}
    }
  
    
    
    
    public List<User> getUsers() throws SQLException{	
    	String sql = "SELECT * FROM USERS";
    	List<User> users = jdbcTemplate.query(sql,new UserRowMapper());
		CustomDataSource.closeConnection(jdbcTemplate);
    	return users;
    }
    
    
    

    
	
}
