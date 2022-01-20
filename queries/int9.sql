SELECT 
    GC.name as name,
    S.name as subject,
    ET.name as type,
    strftime('%Y-%m-%d %Hh%M', startDateTime) as startDateTime,
    strftime('%Y-%m-%d %Hh%M', endDateTime) as endDateTime
FROM EvaluationEvent EE, GradeComponent GC, Subject S, EvaluationType ET
WHERE EE.subject=S.id AND EE.type=ET.id AND GC.id=EE.grade AND endDateTime < datetime('now')
ORDER BY endDateTime DESC, startDateTime DESC, subject, type;