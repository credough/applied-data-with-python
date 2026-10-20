-- Add Primary Keys:
-- authors -> AuthorID
ALTER TABLE data.authors
ADD CONSTRAINT authors_PK PRIMARY KEY authors (AuthorID);
-- books -> BookCode
ALTER TABLE data.books
ADD CONSTRAINT books_PK PRIMARY KEY books (BookCode);
-- sales -> ReceiptNo
ALTER TABLE data.sales
ADD CONSTRAINT sales_PK PRIMARY KEY sales (ReceiptNo);
-- sale_items -> Composite primary key (ReceiptNo, BookCode)
ALTER TABLE data.sale_items
ADD CONSTRAINT sales_items_PK PRIMARY KEY sales_items (ReceiptNo, BookCode);