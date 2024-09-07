package com.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
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
	public String saveRestaurant(@Validated RestaurantEntity restaurantEntity, BindingResult result,Model model) {
		// Insert Query
		if(result.hasErrors()) {
			model.addAttribute("result", result);
			return "NewRestaurant";
		}else {
			restaurantRepository.save(restaurantEntity);
			return "redirect:/listRestaurants";
		}
	}

	@GetMapping("/listRestaurants")
	public String listRestaurants(Model model) {
		List<RestaurantEntity> restaurants = restaurantRepository.findAll();
		model.addAttribute("restaurant", restaurants);
		return "ListRestaurant";
	}
	
	@GetMapping("/deleteById")
	public String deleteById(@RequestParam("restaurantId") Integer restaurantId) {
		restaurantRepository.deleteById(restaurantId);
		return "redirect:/listRestaurants";
	}
	
	@GetMapping("/editById")
	public String EditById(@RequestParam("restaurantId") Integer restaurantId,Model model) {
		//List<RestaurantEntity> restaurants = restaurantRepository.findById(restaurantId);
		Optional<RestaurantEntity> op = restaurantRepository.findById(restaurantId);
		if(op.isEmpty()) {
			return "Error";
		}
		else {
			model.addAttribute("restaurant", op.get());
			return "EditRestaurant";			
		}
	}

	@PostMapping("updateRestaurant")
	public String updateRestaurant(RestaurantEntity restaurantEntity) {
		// Update Query
		restaurantRepository.save(restaurantEntity);
		return "redirect:/listRestaurants";
	}
}
