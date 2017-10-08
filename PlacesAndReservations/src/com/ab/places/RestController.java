package com.ab.places;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ab.model.User;
import com.ab.service.UserService;

@Controller
@RequestMapping("/api")
public class RestController {

	
	@RequestMapping(value="/test",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<String> test(){
		System.out.println("intra!!");
		return new ResponseEntity<String>("test",HttpStatus.OK);
	}
	
	@RequestMapping(value="/recive",method=RequestMethod.POST)
	@ResponseBody
	public void recive(@RequestParam(value="nume") String nume,@RequestParam(value="mese") String nrMese){
		System.out.println("Ajunge in recive!");
		System.out.println(nume+" "+nrMese);
	}
	
	
	@RequestMapping(value="/getUsers",method=RequestMethod.GET )
	@ResponseBody
	public ResponseEntity<List<User>> getUsers(){
		
		System.out.println("Intra pe getUsers");
		UserService us = new UserService();
		List<User> users = new ArrayList<User>();
		users = us.getUsers();
		
		for(User user: users){
			System.out.println(user.getNume()+" "+user.getVarsta());
		}
		
		/*List<String> strings = new ArrayList<String>();
		strings.add("aa");
		strings.add("bb");*/
		return new ResponseEntity<List<User>>(users,HttpStatus.OK);
	}
	
	
	
}
