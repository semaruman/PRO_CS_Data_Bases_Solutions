CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publication_date DATE
);

INSERT INTO books (title, author, publication_date) VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10'),
    ('To Kill a Mockingbird', 'Harper Lee', '1960-07-11'),
    ('1984', 'George Orwell', '1949-06-08'),
    ('Pride and Prejudice', 'Jane Austen', '1813-01-28'),
    ('The Catcher in the Rye', 'J.D. Salinger', '1951-07-16');

CREATE INDEX idx_author ON books(author);