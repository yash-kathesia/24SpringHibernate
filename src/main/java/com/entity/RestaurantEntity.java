package com.entity;

import org.hibernate.validator.constraints.Length;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Data;

@Data
@Entity
@Table(name = "restaurants")
public class RestaurantEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer restaurantId;
	
	@NotBlank(message = "Please Enter Name of the Restaurant")
	@Pattern(regexp = "[a-zA-Z\\s]+",message = "Please Enter Valid Restaurant Name...!!!")
	private String name;

	@NotBlank(message = "Please Enter Address of the Restaurant")
	private String address;

	@Length(min = 5,max = 30,message = "Please Enter length between 5 to 30.")
	@NotBlank(message = "Please Enter Category of the Restaurant")
	private String category;
	
}