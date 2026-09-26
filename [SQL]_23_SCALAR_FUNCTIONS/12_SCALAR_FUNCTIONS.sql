-- display the name of the pets and the number of visits to the vet. include in the list only those who had visited the vet more than once
SELECT 
    pet_v1.PetName AS `Pet Name`, 
    COUNT(*) AS `Number of Visits`
FROM pet_v1
INNER JOIN DoctorVisit v ON pet_v1.PetID = v.PetID
GROUP BY pet_v1.PetID, pet_v1.PetName
HAVING COUNT(*) > 1;