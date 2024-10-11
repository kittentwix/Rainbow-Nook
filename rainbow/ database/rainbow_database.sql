BEGIN TRANSACTION 

DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS book;

CREATE TABLE book (
	book_id SERIAL
	title varchar(50) NOT NULL
	author varchar(50) NOT NULL
	summary varchar(500) NULL
	year_published int NULL
	genre_id int NULL
	image_id int NULL
	
	CONSTRAINT PK_book PRIMARY KEY(book_id)
);

CREATE TABLE review (
	review_id SERIAL
	review varchar(1000) NOT NULL
	book_id int NOT NULL
	
	CONSTRAINT PK_book_id PRIMARY KEY(review_id)
	CONSTRAINT FK_review_book FOREIGN KEY(book_id) REFERENCES book(book_id)
);

COMMIT TRANSACTION