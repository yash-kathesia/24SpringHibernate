package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.RestaurantEntity;
import com.repository.RestaurantRepository;

@Controller
public class RestaurantController {

	@Autowired
	RestaurantRepository restaurantRepository;

	@GetMapping("newRestaurant")
	public String newRestaurant() {
		return "NewRestaurant";
	}

	@PostMapping("saveRestaurant")
	public String saveRestaurant(RestaurantEntity restaurantEntity) {
		// Insert Query
		restaurantRepository.save(restaurantEntity);
		return "Success";
	}

	@GetMapping("/listRestaurants")
	public String listRestaurants(Model model) {
		List<RestaurantEntity> restaurants = restaurantRepository.findAll();
		model.addAttribute("restaurant", restaurants);
		return "ListRestaurant";
	}
	
	@GetMapping("/deleteById")
	public String deleteById(@RequestParam("restaurantId") Integer restaurantId ,Model model) {
		restaurantRepository.deleteById(restaurantId);
		return "redirect:/listRestaurants";
	}
	
	

}
