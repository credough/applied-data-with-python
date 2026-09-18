-- Count how many salesmen per region have consistent decreasing sales from q1 to q3
SELECT Region, COUNT(*) AS num_of_salesmen FROM sporting_goods
WHERE Qtr1 > Qtr2 AND Qtr2 > Qtr3
GROUP BY Region;