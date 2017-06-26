DELETE FROM book_authors;
DELETE FROM book;
DELETE FROM author;

INSERT INTO `book` (`book_id`, `book_image`, `description`, `e_bookisbn`, `format`, `page_count`, `paperisbn`, `price`, `published_date`, `publisher`, `table_of_contents`, `title`) VALUES ('0', 'images/ThingsFallApart.jpg', 'YAMS', NULL, 'Paperback', '205', '385474547', '3.50', '1958', 'William Heinemann Ltd.', NULL, 'Things Fall Apart');
INSERT INTO `book` (`book_id`, `book_image`, `description`, `e_bookisbn`, `format`, `page_count`, `paperisbn`, `price`, `published_date`, `publisher`, `table_of_contents`, `title`) VALUES ('1', 'images/fairytales.jpg', 'Fairy Tales!!!', NULL, 'Hardcover', '816', '517092913', '1.00', '1993', 'Gramercy', NULL, 'The Complete Hans Christian Andersen Fairy Tales');
INSERT INTO `book` (`book_id`, `book_image`, `description`, `e_bookisbn`, `format`, `page_count`, `paperisbn`, `price`, `published_date`, `publisher`, `table_of_contents`, `title`) VALUES ('2', 'images/divinecomedy.jpg', 'HELL!!', NULL, 'Paperback', '928', '451208633', '11.00', '2003', 'Berkley', NULL, 'The Divine Comedy (The Inferno, The Purgatorio, and The Paradiso)');



INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('1', 'Fairy Tales', NULL, 'Hans Christian Andersen', 'Fairy Tales');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('0', 'YAMS', NULL, 'Chinua Achebe', 'YAMS');
INSERT INTO `author` (`author_id`, `about_author`, `affiliations`, `author_name`, `expertise`) VALUES ('2', 'Inferno', NULL, 'Dante Alighieri', 'Purgatorio');



INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('0', '0');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('1', '1');
INSERT INTO `book_authors` (`book_book_id`, `authors_author_id`) VALUES ('2', '2');