-- display the name of the owner and the number of pets owned.
SELECT owner.OwnerName, COUNT(*) AS pets_owned from owner
INNER JOIN pet_v1 ON pet_v1.Owner = owner.Owner
GROUP BY owner.OwnerName