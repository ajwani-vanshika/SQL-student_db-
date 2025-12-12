-- 1. CREATE DATABASE command
CREATE DATABASE BookstoreDB;

-- Select the new database to work within it
USE BookstoreDB;

-- 2. CREATE TABLE command
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author_last_name VARCHAR(50) NOT NULL,
    genre VARCHAR(50),
    price DECIMAL(5, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    publication_year INT
);

-- INSERT DATA
INSERT INTO Books (title, author_last_name, genre, price, stock_quantity, publication_year) VALUES
('The Hitchhiker''s Guide to the Galaxy', 'Adams', 'Science Fiction', 12.50, 45, 1979),
('Pride and Prejudice', 'Austen', 'Classic', 9.99, 20, 1813),
('1984', 'Orwell', 'Dystopian', 15.75, 60, 1949),
('To Kill a Mockingbird', 'Lee', 'Classic', 11.25, 30, 1960),
('A Brief History of Time', 'Hawking', 'Non-Fiction', 18.99, 15, 1988),
('Dune', 'Herbert', 'Science Fiction', 14.50, 55, 1965),
('Educated', 'Westover', 'Biography', 16.99, 40, 2018),
('The Great Gatsby', 'Fitzgerald', 'Classic', 10.50, 25, 1925),
('Where the Crawdads Sing', 'Owens', 'Mystery', 13.99, 70, 2018),
('The Silent Patient', 'Michaelides', 'Thriller', 12.99, 35, 2019),
('Sapiens: A Brief History of Humankind', 'Harari', 'Non-Fiction', 20.99, 10, 2014);

-- UPDATE query(-- Increase the price of 'A Brief History of Time')
UPDATE Books
SET price = 19.99
WHERE title = 'A Brief History of Time';

--  DELETE query(-- Remove books published before 1900 (e.g., 'Pride and Prejudice' from 1813)
DELETE FROM Books
WHERE publication_year < 1900;

-- Find all books in the 'Science Fiction' genre
SELECT title, author_last_name, price FROM Books
WHERE genre = 'Science Fiction';

-- Find books where the price is greater than $15.00
SELECT title, price FROM Books
WHERE price > 15.00;

-- Find books with low stock (quantity less than 30)
SELECT title, stock_quantity FROM Books
WHERE stock_quantity < 30;

-- Find books published after 2017
SELECT title, publication_year FROM Books
WHERE publication_year >= 2018;

-- Find books with 'Classic' genre AND a price less than $12
SELECT title, genre, price FROM Books
WHERE genre = 'Classic' AND price < 12.00;

-- List all books, ordered by publication year (oldest first)
SELECT title, author_last_name, publication_year FROM Books
ORDER BY publication_year ASC;

-- List all books, ordered by price (most expensive first)
SELECT title, price FROM Books
ORDER BY price DESC;

-- List all books, ordered first by genre, and then by title
SELECT genre, title FROM Books
ORDER BY genre ASC, title ASC;

-- Get the 3 cheapest books in the inventory
SELECT title, price FROM Books
ORDER BY price ASC
LIMIT 3;

-- Get the 2 books with the highest stock quantity
SELECT title, stock_quantity FROM Books
ORDER BY stock_quantity DESC
LIMIT 2;

-- Analytical Query 1: COUNT and AVG(-- Total number of books in the inventory and their average price)
SELECT COUNT(book_id) AS TotalBooks,
       AVG(price) AS AveragePrice
FROM Books;

-- Analytical Query 2: MIN and MAX(-- Find the minimum and maximum publication year of the currently stocked books)
SELECT MIN(publication_year) AS OldestBookYear,
       MAX(publication_year) AS NewestBookYear
FROM Books;

SELECT * FROM Books;