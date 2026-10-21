-- Foreign Key Constraints & Cascade Testing:
-- 4.1 Add FK from sale_items(BookCode) referencing books(BookCode) with ON DELETE CASCADE ON UPDATE CASCADE.
ALTER TABLE sale_items
ADD CONSTRAINT FK_sale_items FOREIGN KEY sale_items (BookCode) REFERENCES books (BookCode)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- 4.2 Add FK from sale_items(ReceiptNo) referencing sales(ReceiptNo) with ON DELETE CASCADE ON UPDATE CASCADE.
ALTER TABLE sale_items
ADD CONSTRAINT FK_sale_items_receiptno FOREIGN KEY sale_items (ReceiptNo) REFERENCES sales (ReceiptNo)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- 4.3 Add FK from sales(AuthorID) referencing authors(AuthorID) with ON DELETE SET NULL ON UPDATE CASCADE.
ALTER TABLE sales
ADD CONSTRAINT FK_sales FOREIGN KEY sales (AuthorID) REFERENCES authors (AuthorID)
ON DELETE SET NULL
ON UPDATE CASCADE;

-- 4.4 Add the self-referencing FK on authors(AuthorMentor) referencing authors(AuthorID) with ON DELETE SET NULL ON UPDATE CASCADE.
ALTER TABLE authors
ADD CONSTRAINT FK_authors FOREIGN KEY (AuthorMentor) REFERENCES authors(AuthorID)
ON DELETE SET NULL
ON UPDATE CASCADE;

UPDATE authors
SET AuthorMentor = null
WHERE AuthorMentor = '' OR AuthorMentor is null