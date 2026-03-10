ALTER TABLE books DROP INDEX idx_author;
CREATE INDEX idx_title ON books(title);
SHOW INDEXES FROM books;