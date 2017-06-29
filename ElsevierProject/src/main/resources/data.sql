DELETE FROM book_authors;
DELETE FROM book;
DELETE FROM author;
DELETE FROM address;
DELETE FROM customer;

INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('0', 'Things Fall Apart', 'images/ThingsFallApart.jpg', 'Paperback', '3.50', '385474547', 'Things Fall Apart tells two intertwining stories, both centering no Okonkwo, a "strong man" of an Ibo village in Nigeria. The first, a powerful fable of the immemorial conflict between the individual and society, traces Okonkwos fall from grace with the tribal world. The second as modern as the first is ancient, concerns the clash of cultures and the destruction of Okonkwos world with the arrival of aggressive European missionaries. \n these perfectly harmonized twin dramas are informed by an awareness capable of encompassing at once the life of nature, human history, and the mysterious compulsions of the soul.', '205', 'William Heinemann Ltd.', '1958', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('1', 'The Complete Hans Christian Andersen Fairy Tales', 'images/fairytales.jpg', 'Hardcover', '1.00', '517092913', 'Fairy Tales!!!', '816', 'Gramercy', '1993' , '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('2', 'The Divine Comedy (The Inferno, The Purgatorio, and The Paradiso)', 'images/divinecomedy.jpg', 'Paperback', '11.00', '451208633', 'HELL!!', '928', 'Berkley', '2003', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('3', 'Anna Karenina', 'https://upload.wikimedia.org/wikipedia/commons/c/c7/AnnaKareninaTitle.jpg', 'Paperback', '4.00', '24352345', 'Love affairs are bad', '928', 'Berkley', '1877', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('4', 'Madame Bovary', 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Madame_Bovary_1857_%28hi-res%29.jpg', 'Paperback', '7.00', '23452345', 'never listen to your heart. bad idea.', '928', 'Berkley', '1856', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('5', 'War and Peace', 'https://upload.wikimedia.org/wikipedia/commons/a/af/Tolstoy_-_War_and_Peace_-_first_edition%2C_1869.jpg', 'Paperback', '12.00', '12341243', 'There are a lot of characters with a lot of history and they are all connected and great times. also napolean. ', '928', 'Berkley', '1869', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('6', 'The Great Gatsby', 'https://upload.wikimedia.org/wikipedia/en/f/f7/TheGreatGatsby_1925jacket.jpeg', 'Paperback', '5.00', '4523452', 'Jazz age. something something american dream. old money < new money', '928', 'Berkley', '1925', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('7', 'Lolita', 'https://upload.wikimedia.org/wikipedia/commons/5/57/Lolita_1955.JPG', 'Paperback', '11.00', '4523452', 'v controversial', '928', 'Berkley', '1955', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('8', 'Middlemarch', 'https://upload.wikimedia.org/wikipedia/commons/2/25/Middlemarch_1.jpg', 'Paperback', '11.00', '4523452', 'a study of povincial life', '928', 'Berkley', '1871', '');
INSERT INTO `book` (`book_id`, `title`, `book_image`, `format`, `price`, `isbn`, `description`, `page_count`, `publisher`, `published_date`, `table_of_contents`) VALUES ('9', 'The Adventures of Huckleberry Finn', 'https://upload.wikimedia.org/wikipedia/commons/6/61/Huckleberry_Finn_book.JPG', 'Paperback', '3.75', '4523452', 'boy oblivious of his dreadful life goes on great adventures', '928', 'Berkley', '1885', '');


INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('1', 'Fairy Tales', NULL, 'Hans Christian Andersen', 'Fairy Tales');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('0', 'YAMS', NULL, 'Chinua Achebe', 'YAMS');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('2', 'Inferno', NULL, 'Dante Alighieri', 'Purgatorio');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('3', 'Anne Karenina', NULL, 'Leo Tolstoy', 'Anne Karenina');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('4', 'Madame Bovary', NULL, 'Gustave', 'Madame Bovary');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('5', 'Gatsby', NULL, 'F. Scott Fitzgerald', 'the twenties!');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('6', 'Lolita', NULL, 'Vladimir Nabokov', 'internationally famous');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('7', 'Middlemarch', NULL, 'George Eliot', 'pen name for Mary Anne Evans');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('8', 'Huck Finn', NULL, 'Mark Twain', 'Americans love him');

INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('0', '0');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('1', '1');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('2', '2');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('3', '3');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('4', '4');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('5', '3');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('6', '5');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('7', '6');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('8', '7');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('9', '8');



INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('0',  'Bob', 'Doe', 'bobdoe@email.com', 'password');
INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `password`) VALUES ('0',  'John', 'Doe', 'johndoe@email.com', 'password');

INSERT INTO `address` (`customer_id`, `address_type`, `address_line1`, `address_line2`, `city`, `state`, `postcode`, `country`, `phone_number`, `address_id`) Values('1', 'billing', '17 Street', 'Apt 3', 'Philadelphia', 'PA', '19103', 'USA', '555-555-5555', '0');
INSERT INTO `address` (`customer_id`, `address_type`, `address_line1`, `address_line2`, `city`, `state`, `postcode`, `country`, `phone_number`, `address_id`) Values('1', 'shipping', '17 Street', 'Apt 3', 'Poughkeepsie', 'NY', '12603', 'USA', '666-555-6666', '1');





