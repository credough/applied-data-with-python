-- Display the name, region and average sales of those who averaged between 200k to 300k in sales
SELECT CONCAT(`First Name`, ' ',`Last Name`) AS name_, Region, ((Qtr1 + Qtr2 + Qtr3)/3) AS Average_Sales FROM sporting_goods
WHERE ((Qtr1 + Qtr2 + Qtr3)/3) BETWEEN 200000 AND 300000