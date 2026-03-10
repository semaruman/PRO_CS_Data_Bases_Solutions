CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    publication_year INT,
    isbn VARCHAR(13),

    UNIQUE INDEX idx_unique_isbn (isbn),
    INDEX idx_author (author),
    INDEX idx_composite (author, publication_year)
);

INSERT INTO books(title, author, publication_year, isbn) VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', 1925, '9780743273565'),
    ('To Kill a Mockingbird', 'Harper Lee', 1960, '9780061120084'),
    ('1984', 'George Orwell', 1949, '9780451524935');

SELECT *
FROM books;