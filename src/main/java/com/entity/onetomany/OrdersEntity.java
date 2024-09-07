package com.entity.onetomany;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "orders")
public class OrdersEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer orderId;
	
	Date orderDate;
	
	Float amount;
	
	@ManyToOne
	@JoinColumn(name = "customerId")
	CustomerEntity customers;
}
