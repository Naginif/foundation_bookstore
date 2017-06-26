package com.qa.services;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.qa.models.Book;

@Repository
public interface BookService extends CrudRepository<Book, Integer>{
	
}
