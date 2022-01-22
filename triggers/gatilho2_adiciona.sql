CREATE TRIGGER validSubjectPeriod
BEFORE INSERT ON Period
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'The period belongs to a subject not taken that term')
    WHERE NOT EXISTS (
        SELECT TermGrades.subject as subject,
            TermGrades.term as term
        FROM TermGrades
        WHERE New.subject = subject
        AND New.term = term
    );
END;
