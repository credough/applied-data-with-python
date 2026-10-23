-- Date Extraction & Formatting: Display AuthorID, formatted author name (FirstName, middle initial with '.', Surname as FullName), ReceiptNo, and SaleDate for all sales made in 2024.
SELECT a.authorID, CONCAT(TRIM(a.FirstName), ' ', LEFT(TRIM(a.Midname), 1), '.',' ', TRIM(a.Surname)) AS FullName, s.ReceiptNo, s.SaleDate FROM authors a
JOIN sales s ON a.AuthorID = s.AuthorID
WHERE YEAR(saledate) = 2024;

-- Multi-Table Line Total: Display each sale line showing ReceiptNo, SaleDate, BookTitle, Qty, Price, and calculated subtotal (Qty * Price) as SubTotal.
SELECT s.ReceiptNo, s.SaleDate, b.Booktitle, si.Qty, b.Price, (si.Qty * b.Price) AS SubTotal FROM sales s
JOIN sale_items si ON s.ReceiptNo = si.ReceiptNo
JOIN books b ON si.BookCode = b.BookCode

-- Left Join (Inactive Authors): Display the AuthorID and Surname of all authors who have zero sales logged in the sales table.
SELECT a.AuthorID, a.Surname FROM authors a
LEFT JOIN sales s ON s.AuthorID = a.AuthorID
WHERE s.ReceiptNo IS NULL;

-- Left Join (Unsold Catalog Items): Display all book titles and their codes, showing all books even if they have never been ordered in sale_items.
SELECT b.booktitle, b.bookcode FROM books b
LEFT JOIN sale_items si ON si.bookcode = b.bookcode;

-- Invoice Total (Per Receipt): Display each author's AuthorID, ReceiptNo, and the computed Total Amount per Receipt.
SELECT a.authorid, s.receiptno, SUM(si.Qty * b.Price) AS computed_total_amount  FROM authors a
JOIN sales s ON s.authorid = a.authorid
JOIN sale_items si ON si.receiptno = s.receiptno
JOIN books b ON b.bookcode = si.bookcode 
GROUP BY s.receiptno, a.authorid

-- Customer/Author Grand Total: Display each author's AuthorID, Surname, and their grand total sales volume (TotalRevenue) across all purchases, sorted from highest to lowest.
SELECT a.authorid, a.surname, SUM(si.Qty * b.Price) AS TotalRevenue  FROM authors a
JOIN sales s ON a.authorid = s.authorid
JOIN sale_items si ON si.receiptno = s.receiptno
JOIN books b ON b.bookcode = si.bookcode
GROUP BY a.surname, a.authorid
ORDER BY SUM(si.Qty * b.Price) DESC

-- Filter by Having: Count how many receipts each author has, and display only authors with more than 1 receipt.
SELECT COUNT(sales.ReceiptNo) as no_of_receipts, authors.AuthorID, CONCAT(authors.Firstname,' ' ,authors.surname) AS full_name FROM authors
JOIN sales ON sales.authorid = authors.authorid
GROUP BY authors.authorID
HAVING COUNT(sales.ReceiptNo) > 1

-- Self-Join: Display the author's full name, author ID, mentor ID, and the mentor's full name (show authors even if they do not have a mentor).
SELECT CONCAT(a.Firstname,' ' ,a.surname) AS authors_full_name, a.authorid, a.authormentor as mentorid, CONCAT(m.Firstname,' ' ,m.surname) as mentor_full_names FROM authors a
LEFT JOIN authors m ON m.authorid = a.authormentor