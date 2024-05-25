Books Table: 

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    is_available BOOLEAN DEFAULT TRUE
);

User Table:

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

Transaction Table:
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    transaction_type VARCHAR(10),
    transaction_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

Inserting Data into SQL:

INSERT INTO Books (book_id, title, author) VALUES 
(1, 'harry', 'Harry Potter'),
(2, 'harry2', 'Harry Potter2');

INSERT INTO Users (user_id, name) VALUES 
(1, 'Sai'),
(2, 'Lakshman');

Displaying Table

Select * from Books;
Select * from Users;


