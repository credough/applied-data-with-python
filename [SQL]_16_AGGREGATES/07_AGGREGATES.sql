-- TOO LONG (AYOKO NA IALAGAY)
SELECT CONCAT(`First Name`, ' ',`Last Name`) AS name, CASE 
WHEN ((Qtr1 + Qtr2 + Qtr3)/ 3) >= 500000 THEN 'For promotion as regional head'
WHEN ((Qtr1 + Qtr2 + Qtr3)/ 3) BETWEEN 200000 AND 499999.99 THEN 'For promotion as state head'
WHEN Qtr1 < Qtr2 AND Qtr2 < Qtr3 THEN 'For 100% bonus' 
WHEN Qtr2 > Qtr1 AND Qtr3 < Qtr2 AND Qtr3 > Qtr1 THEN 'For 50% bonus'
WHEN Qtr2 > Qtr1 AND Qtr3 < Qtr1 THEN 'For continued probation'
WHEN Qtr1 > Qtr2 AND Qtr2 > Qtr3 THEN 'For contract termination'
ELSE 'No Remark'
END AS Remark
FROM sporting_goods

