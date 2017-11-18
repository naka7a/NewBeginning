package com.ab.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

import com.ab.model.User;
import com.ab.persistence.UsersDAO;

@Controller
public class UserService {
	
	private List<User> users = null;
	
    UsersDAO usersDAO = new UsersDAO();
    
    public List<User> getAllUsers() throws SQLException{
    	return usersDAO.getUsers();
    }
	
	
	
	
}
