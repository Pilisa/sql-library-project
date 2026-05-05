CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Available BOOLEAN DEFAULT TRUE
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE BorrowedBooks (
    BorrowID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,

    -- Foreign Keys (RELATIONSHIPS)
    CONSTRAINT fk_member
        FOREIGN KEY (MemberID)
        REFERENCES Members(MemberID)
        ON DELETE CASCADE,

    CONSTRAINT fk_book
        FOREIGN KEY (BookID)
        REFERENCES Books(BookID)
        ON DELETE CASCADE
);
