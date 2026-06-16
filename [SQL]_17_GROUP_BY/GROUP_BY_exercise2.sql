-- Q73. Get the average final_grade per semester.
SELECT ROUND(AVG(final_grade),2) AS avg_final_grade, semester FROM enrollments
GROUP BY semester

-- Q74. Count books per category in the library.
SELECT COUNT(*) AS book_count, category FROM library
GROUP BY category

-- Q75. Get the total copies per category in the library.
SELECT SUM(copies) AS total_copies, category FROM library
GROUP BY category

-- Q76. Count events per category.
SELECT COUNT(*) AS total_events, category FROM events
GROUP BY category

-- Q77. Get the total budget per event category.
SELECT SUM(budget) AS total_budget, category FROM events
GROUP BY category