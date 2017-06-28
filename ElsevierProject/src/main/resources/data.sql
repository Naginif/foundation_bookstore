DELETE FROM book_authors;
DELETE FROM book;
DELETE FROM author;
--DELETE FROM address;
---DELETE FROM customer;

INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('0', 'Things Fall Apart', 'images/ThingsFallApart.jpg', 'Paperback', '3.50', '385474547', 'Things Fall Apart tells two intertwining stories, both centering no Okonkwo, a "strong man" of an Ibo village in Nigeria. The first, a powerful fable of the immemorial conflict between the individual and society, traces Okonkwos fall from grace with the tribal world. The second as modern as the first is ancient, concerns the clash of cultures and the destruction of Okonkwos world with the arrival of aggressive European missionaries. \n these perfectly harmonized twin dramas are informed by an awareness capable of encompassing at once the life of nature, human history, and the mysterious compulsions of the soul.', '205', 'William Heinemann Ltd.', '1958', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('1', 'The Complete Hans Christian Andersen Fairy Tales', 'images/fairytales.jpg', 'Hardcover', '1.00', '517092913', 'Fairy Tales!!!', '816', 'Gramercy', '1993' , '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('2', 'The Divine Comedy (The Inferno, The Purgatorio, and The Paradiso)', 'images/divinecomedy.jpg', 'Paperback', '11.00', '451208633', 'HELL!!', '928', 'Berkley', '2003', '');

INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('1', 'Fairy Tales', NULL, 'Hans Christian Andersen', 'Fairy Tales');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('0', 'YAMS', NULL, 'Chinua Achebe', 'YAMS');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('2', 'Inferno', NULL, 'Dante Alighieri', 'Purgatorio');

INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('0', '0');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('1', '1');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('2', '2');

--INSERT INTO `customer` (`customer_id`, `first_name`, 'last_name', 'email', 'password') VALUES ('0',  'Bob', 'Doe', 'doe@email.com', 'password');
--INSERT INTO `customer` (`customer_id`, `first_name`, 'last_name', 'email', 'password') VALUES ('1',  'John', 'Doe', 'doe@email.com', 'password');

--INSERT INTO 'address' ('customer_id', 'address_type', 'address_line1', 'address_line2', 'city', 'state', 'postcode', 'country', 'phone_nunmber', 'address_id') Values('0', 'billing', '17 Street', 'Apt 3', 'Philadelphia', 'PA', '19103', 'USA', '555-555-5555', '0');
--INSERT INTO 'address' ('customer_id', 'address_type', 'address_line1', 'address_line2', 'city', 'state', 'postcode', 'country', 'phone_nunmber', 'address_id') Values('0', 'shipping', '17 Street', 'Apt 3', 'Poughkeepsie', 'NY', '12603', 'USA', '666-555-6666', '1');




