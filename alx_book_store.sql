CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Authors (author_id INT PRIMARY KEY AUTO_INCREMENT, author_name VARCHAR(215) NOT NULL);
CREATE TABLE Books (book_id INT PRIMARY KEY AUTO_INCREMENT, title VARCHAR(130) NOT NULL, author_id INT, price DECIMEL(10,2), publication_date DATE, FOREIGN KEY(author_id) REFERENCES Author(author_id) ON DELETE SET NULL);
CREATE TABLE Customers (customer_id INT PRIMARY KEY AUTO_INCREMENT, customer_name VARCHAR(215) NOT NULL, email VARCHAR(215) UNIQUE NOT NULL, address TEXT);
CREATE TABLE Orders (order_id INT PRIMARY KEY AUTO_INCREMENT, customer_id INT, order_date DATE NOT NULL, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE);
CREATE TABLE Order_Details (order_detail_id INT PRIMARY KEY AUTO_INCREMENT, order_id INT, book_id INT, quantity DOUBLE, FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE, FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE);