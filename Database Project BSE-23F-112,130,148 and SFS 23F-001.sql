Use Project;
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    AuthorID INT,
    PublicationYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Authors (FirstName, LastName)
VALUES
('J.K.', 'Rowling'),
('George', 'Orwell'),
('J.R.R.', 'Tolkien');

-- Insert data into Books table
INSERT INTO Books (Title, AuthorID, PublicationYear)
VALUES
('Harry Potter and the Philosopher\'s Stone', 1, 1997),
('1984', 2, 1949),
('The Hobbit', 3, 1937);



