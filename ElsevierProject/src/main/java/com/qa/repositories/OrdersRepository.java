package com.qa.repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.Book;
import com.qa.models.Customer;
import com.qa.models.Orders;

@Repository
public interface OrdersRepository extends CrudRepository<Orders, Integer>{
	
	@Query("SELECT o from Orders o WHERE o.customer_id = :customer_id")
	public Iterable<Orders> findOrders(@Param("customer_id") int customer_id);
	
}

