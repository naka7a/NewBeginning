package com.ab.places;

import org.springframework.stereotype.Controller;
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
	
	
	@RequestMapping("/userLogged")
	public ModelAndView userLogged(){
		System.out.println("ajunge");
		ModelAndView model = new ModelAndView("userWhenIsLogged");
		
		return model;
		
	}
}
