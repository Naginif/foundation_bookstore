package com.qa.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import com.qa.models.Customer;
import com.qa.models.Orders;

@Repository
public interface OrdersRepository extends CrudRepository<Orders, Integer>{
	
	
		@Query("select c from Customer c where c.email = :email and c.password = :password")
			public Customer loginProcess(@Param("email") String email,@Param("password") String password);
		
	
		
	@Modifying
	@Transactional
	@Query("UPDATE Customer c set c.firstName = :firstName, c.lastName = :lastName, c.email = :email, c.password = :password WHERE c.customerId = :customerId")
	public int updateCustomer(@Param("firstName") String firstName,
			@Param("lastName") String lastName,
			@Param("email") String email,
			@Param("customerId") int customerId,
			@Param("password") String password);
	
	//find existing email 
	@Query("select c from Customer c where c.email = :email")
	public Customer findExisting(@Param("email") String email);
}

