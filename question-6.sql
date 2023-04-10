SELECT DISTINCT substr(email, instr(email, '@') +1 ) AS DOMAIN
FROM persons
WHERE city ='Seattle';