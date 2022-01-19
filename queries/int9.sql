.mode columns
.headers on
.nullvalue NULL

SELECT S.name as subject, ET.name as type, startDateTime, endDateTime
FROM EvaluationEvent EE, Subject S, EvaluationType ET
WHERE EE.subject=S.id AND EE.type=ET.id
    AND  startDateTime < datetime('now')
ORDER BY subject, type, startDateTime;