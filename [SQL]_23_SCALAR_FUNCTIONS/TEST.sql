SELECT * FROM sys.client

ALTER TABLE client
ADD COLUMN mobileno VARCHAR(15),
ADD COLUMN landline VARCHAR(15),
ADD COLUMN email VARCHAR(100);

INSERT INTO Client (ï»¿ClientNo, FirstName, MidName, Surname, Street, City, Zip, CreditLimit, mobileno)
VALUES ('C12', 'Ken', 'Sato', 'Takahashi', 'Roxas Blvd', 'Manila', '1000', 60000, '09171234567');