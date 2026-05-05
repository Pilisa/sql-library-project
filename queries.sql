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
