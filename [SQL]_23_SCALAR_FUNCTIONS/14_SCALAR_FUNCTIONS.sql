-- display all pet info and owner name. display only those whose owners are from Manila
SELECT owner.OwnerName, pet_v1.* FROM pet_v1
INNER JOIN owner ON owner.Owner = pet_v1.Owner
WHERE Address LIKE '%Manila%'
ORDER BY Age DESC 
