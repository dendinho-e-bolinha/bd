.mode columns
.headers on
.nullvalue NULL

SELECT DISTINCT Pr.name as professor, S.name
FROM Lecturer L, Professor as Pr, Period as Pe, Subject as S
Where L.Period=Pe.id AND L.professor=Pr.id AND Pe.subject=S.id
ORDER BY S.name, professor;