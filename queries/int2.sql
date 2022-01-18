.mode columns
.headers on
.nullvalue NULL

SELECT S.name AS subject, T.name, T.description
FROM Subject S, Task T
WHERE T.done=0
AND S.id=T.subject 
ORDER BY subject;