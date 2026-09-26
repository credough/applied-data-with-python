-- update the current age of the pets
UPDATE pet_v1
SET Age = TIMESTAMPDIFF(YEAR, Birthdate, CURDATE())