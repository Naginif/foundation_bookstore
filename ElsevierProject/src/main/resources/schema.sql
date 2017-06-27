drop table if exists book_authors;
drop table if exists shopping_cart;
drop table if exists customer_orders;
drop table  if exists address;

drop table  if exists author;
drop table if exists book;
drop table if exists orders;
drop table if exists customer;



CREATE TABLE customer
(
    customer_id int(11) NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY(customer_id)
);

CREATE TABLE orders
(
    order_id int(11) NOT NULL,
    book_id int(11) NOT NULL,
    quantity int(11) NOT NULL,
    PRIMARY KEY(order_id, book_id)
);

CREATE TABLE book
(
	book_id int(11) NOT NULL,
	title varchar(255) NOT NULL,
	book_image varchar(255) NOT NULL,
	format varchar(255) NOT NULL,
	price double NOT NULL,
	isbn varchar(255) NOT NULL,
	description varchar(8000),
	page_count int(11),
	publisher varchar(255),
	publsihed_date varchar(255),
	table_of_contents varchar(255),
	PRIMARY KEY(book_id)
);

CREATE TABLE author
(
	author_id int(11) NOT NULL,
	author_name varchar(255) NOT NULL,
	about_author varchar(255),
	affiliations varchar(255),
	expertise varchar(255),
	PRIMARY KEY(author_id)
);

CREATE TABLE book_authors
(
	book_id int(11) NOT NULL,
	author_id int(11) NOT NULL,
	FOREIGN KEY (book_id) REFERENCES book(book_id),
	FOREIGN KEY (author_id) REFERENCES author(author_id),
	PRIMARY KEY(author_id, book_id)
);

CREATE TABLE customer_orders
(
	order_id int(11) NOT NULL,
	customer_id int(11) NOT NULL,
	date varchar(255) NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(order_id, customer_id)
);
	
CREATE TABLE shopping_cart
(
	book_id int(11) NOT NULL,
	customer_id int(11) NOT NULL,
	quantity int(11) NOT NULL,
	FOREIGN KEY (book_id) REFERENCES book(book_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(book_id, customer_id)
);


CREATE TABLE address
(
	customer_id int(11) NOT NULL,
	address_type varchar(25) NOT NULL,
	address_line1 varchar(255) NOT NULL,
	address_line2 varchar(255) NOT NULL,
	city varchar(255) NOT NULL,
	state varchar(255) NOT NULL,
	postcode varchar(255) NOT NULL,
	country varchar(255) NOT NULL,
	phone_number varchar(255) NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(customer_id, address_type)
);