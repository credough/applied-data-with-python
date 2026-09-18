-- Display the region and the lastnames of the salesmen in each region. Output the
-- salemen’ last name side by side with the region. There should be 4 output rows on the
-- basis of the 4 regions. Write the names in alphabetical order

SELECT Region, GROUP_CONCAT(`Last Name` ORDER BY `Last Name` SEPARATOR ', ') AS LastNames FROM sporting_goods
GROUP BY Region
