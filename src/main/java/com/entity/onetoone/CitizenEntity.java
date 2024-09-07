package com.entity.onetoone;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@Table(name="citizen")
@Entity
@FieldDefaults(level = AccessLevel.PRIVATE)
public class CitizenEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer citizenId;
	
	String firstName;
	String lastName;
	String emailId;
	Integer age;
}