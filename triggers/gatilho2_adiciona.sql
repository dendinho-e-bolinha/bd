CREATE TRIGGER validSubjectPeriod
BEFORE INSERT ON Period
FOR EACH ROW 
BEGIN
    SELECT RAISE(
            ABORT,
            'That subject does not occurr on the term of this period'
        )
    WHERE NOT EXISTS (
            SELECT Period.subject as subject
            FROM Period
            WHERE New.subject = Period.subject
        );
END;