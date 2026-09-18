-- Count how many salesmen from each region averaged between 200k to 300k in sales
SELECT Region, COUNT(*) AS salesmen FROM sporting_goods
WHERE ((Qtr1 + Qtr2 + Qtr3)/3) >= 200000 AND ((Qtr1 + Qtr2 + Qtr3)/3) <= 300000
GROUP BY Region