package com.ab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/app")
public class ApplicationController {

	
	@RequestMapping("/home")
	public ModelAndView home(){
		System.out.println("ajunge");
		ModelAndView model = new ModelAndView("RestaurantView");
		
		return model;
		
	}
	
	@RequestMapping("/restaurant-register")
	public ModelAndView restaurant(){
		ModelAndView model = new ModelAndView("Restaurant-Register");
		
		return model;
		
	}
	
	@RequestMapping("/userView")
	public ModelAndView getRestaurantView(){
		ModelAndView model = new ModelAndView("/UserView");
		
		return model;
				
	}
	
	
	@RequestMapping("/userLogged")
	public ModelAndView userLogged(){
		System.out.println("ajunge");
		ModelAndView model = new ModelAndView("userWhenIsLogged");
		
		return model;
		
	}
	
	
	@RequestMapping("/restaurant-details/{id}")
	public ModelAndView getRestaurant(@PathVariable int id){
		System.out.println("ID:"+id);
		ModelAndView model = new ModelAndView("restaurant-details");
		model.addObject("restaurantId", (Object)id);
		
		return model;
	}
	
	
}
