-- Show all books
SELECT * FROM Books;

-- Available books
SELECT * FROM Books
WHERE Available = TRUE;

-- JOIN: Who borrowed what
SELECT Members.FullName, Books.Title, BorrowedBooks.BorrowDate
FROM BorrowedBooks
JOIN Members ON BorrowedBooks.MemberID = Members.MemberID
JOIN Books ON BorrowedBooks.BookID = Books.BookID;

-- Book with ID 2 is now borrowed → should not be available
UPDATE Books
SET Available = FALSE
WHERE BookID = 2;

SELECT * FROM Books WHERE BookID = 2;
SELECT * FROM Members WHERE MemberID = 1;

-- Member returns the book
UPDATE BorrowedBooks
SET ReturnDate = '2026-05-05'
WHERE BorrowID = 1;
SELECT * FROM BorrowedBooks WHERE BorrowID = 1;

-- Delete a member
DELETE FROM Members
WHERE MemberID = 2;
SELECT * FROM Members;

DELETE FROM Books
WHERE BookID = 3;

SELECT * FROM Books;

--This deletes EVERYTHING
DELETE FROM BorrowedBooks;
SELECT * FROM BorrowedBooks;
