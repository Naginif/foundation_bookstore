package com.qa.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer>{

	@Query("SELECT b from Book b WHERE b.title LIKE %:bookName%")
	public Iterable<Book> findBooks(@Param("bookName") String bookName);
}
