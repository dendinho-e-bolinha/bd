SELECT Period.weekday as weekday,
    Period.startTime as startTime,
    Period.endTime as endTime,
    Classroom.name as classroom,
    Subject.name as subject,
    Term.name as term,
    Institution.name as institution
FROM Institution,
    Classroom,
    Period,
    Term,
    Subject
WHERE Institution.id = Classroom.classroomLocation
    AND Period.classroom = Classroom.id
    AND Period.subject = Subject.id
    AND Period.term = Term.id
ORDER BY institution ASC,
    Term.startDate DESC,
    Term.endDate DESC,
    case
        when weekday = 'monday' then 1
        when weekday = 'tuesday' then 2
        when weekday = 'wednesday' then 3
        when weekday = 'thursday' then 4
        when weekday = 'friday' then 5
        when weekday = 'saturday' then 6
        when weekday = 'sunday' then 7
    end,
    startTime ASC,
    endTime ASC