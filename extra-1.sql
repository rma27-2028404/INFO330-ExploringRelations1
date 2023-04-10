SELECT 
  (SELECT age 
   FROM persons 
   WHERE title = 'Dr' 
   AND gender = 'female' 
   AND city = 'West Palm Beach' 
   AND state = 'Florida') 
  AS female_dr_age, 
  (SELECT age 
   FROM persons 
   WHERE title = 'Rev' 
   AND gender = 'male' 
   AND city = 'Phoenix' 
   AND state = 'Arizona') 
  AS male_rev_age,
  CASE 
    WHEN (SELECT age 
          FROM persons 
          WHERE title = 'Dr' 
          AND gender = 'female' 
          AND city = 'West Palm Beach' 
          AND state = 'Florida') 
          = (SELECT age 
             FROM persons 
             WHERE title = 'Rev' 
             AND gender = 'male' 
             AND city = 'Phoenix' 
             AND state = 'Arizona') 
    THEN 'Yes' 
    ELSE 'No' 
  END