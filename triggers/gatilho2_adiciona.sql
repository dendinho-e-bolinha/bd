CREATE TRIGGER validSubjectPeriod
BEFORE INSERT ON Period
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'The period belongs to a subject not taken that term')
    WHERE NOT EXISTS (
        SELECT Period.subject as subject 
        FROM Period
        WHERE New.subject = Period.subject
    );
END;