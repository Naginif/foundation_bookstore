package com.qa.repositories;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.qa.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer>{

	//@Query("SELECT b from Book b WHERE b.title LIKE %:bookName% OR b.isbn = :bookName")
	//public Iterable<Book> findBooks(@Param("bookName") String bookName);
	
	@Query (value = "SELECT * FROM book JOIN book_authors ON book.book_id = book_authors.book_book_id JOIN author ON book_authors.authors_author_id = author.author_id WHERE author.author_name LIKE %:bookName% OR book.isbn LIKE %:bookName% OR book.title LIKE %:bookName%",
			nativeQuery = true)
	public Iterable<Book> findBooks(@Param("bookName") String bookName);
	
}
