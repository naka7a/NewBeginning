package com.ab.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ab.dto.Obj;
import com.ab.dto.RestaurantRegistrationDTO;
import com.ab.model.Restaurant;
import com.ab.model.User;
import com.ab.persistence.RestaurantDAO;
import com.ab.persistence.UsersDAO;
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
	public void recive(@RequestParam(value="nume") String nume, @RequestParam(value="mese") String mese){
		System.out.println("Ajunge in recive!");
		System.out.println(nume+" "+mese);
	}
	
	
	@RequestMapping(value="/getUsers",method=RequestMethod.GET )
	@ResponseBody
	public ResponseEntity<List<User>> getUsers() throws SQLException{
		
		System.out.println("Intra pe getUsers");
		UserService us = new UserService();
		List<User> users = new ArrayList<User>();
		users = us.getAllUsers();
		
		for(User user: users){
			System.out.println(user.getNume()+" "+user.getEmail());
		}
		
		return new ResponseEntity<List<User>>(users,HttpStatus.OK);
	}
	
	@RequestMapping (value="/getStrings", method=RequestMethod.GET )
	@ResponseBody
	public String getInfos() throws SQLException{
		
		System.out.println("Intra pe getUsers");
		UserService us = new UserService();
		List<User> users = new ArrayList<User>();
		users = us.getAllUsers();
		
		for(User user: users){
			System.out.println(user.getNume()+" "+user.getEmail());
		}
		

		return "hello";
	}
	
	@RequestMapping(value="/postRestaurantRegistrationForm",method=RequestMethod.POST)
	@ResponseBody
	public void getRegistration(@RequestParam(value="email") String email,
								@RequestParam(value="password") String password,
								@RequestParam(value="nume") String nume,
								@RequestParam(value="descriere") String descriere,
								@RequestParam(value="tara") String tara,
								@RequestParam(value="judet") String judet,
								@RequestParam(value="localitate") String localitate,
								@RequestParam(value="strada") String strada,
								@RequestParam(value="telefon") String telefon,
								@RequestParam(value="numar") String numar, //) throws SQLException{
								@RequestParam(value="image") MultipartFile image) throws SQLException{ //RestaurantRegistrationDTO restaurantRegistrationDTO){
		
		System.out.println(email);
		System.out.println("Image length:"+image.getContentType());
		RestaurantRegistrationDTO r = new RestaurantRegistrationDTO(); 
		r.setDescriere(descriere);
		r.setEmail(email);
		r.setJudet(judet);
		r.setLocalitate(localitate);
		r.setNumar(numar);
		r.setNume(nume);
		r.setPassword(password);
		r.setStrada(strada);
		r.setTara(tara);
		r.setTelefon(telefon);
		
//	    System.out.println(image.getContentType()+" "+image.getOriginalFilename()+" "+image.getSize());
		
		RestaurantDAO restaurantDAO = new RestaurantDAO();
		restaurantDAO.insertRestaurant(r);
		
	}
	
	@RequestMapping(value="/getRestaurant/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Restaurant getRestaurant(@PathVariable long id){
		System.out.println("ID-ul restaurantului detaliat:"+id);
		return new RestaurantDAO().getRestaurant(id);
	}
	
	@RequestMapping(value="/getAllRestaurants",method=RequestMethod.GET)
	@ResponseBody
	public List<Restaurant> getAllRestaurants() throws SQLException{
		RestaurantDAO restaurantDAO = new RestaurantDAO();
		List<Restaurant> restaurants = restaurantDAO.getAllRestaurants();
		
		return restaurants;
	}
		
}
