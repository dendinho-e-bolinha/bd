CREATE TRIGGER overlappingPeriod BEFORE
INSERT ON Period 
FOR EACH ROW 
BEGIN
    SELECT RAISE(ABORT, 'A period within that schedule already exists')
    WHERE EXISTS (
            SELECT *
            FROM Period P
            WHERE P.id <> New.id
                AND (
                    (
                        New.startTime < P.startTime
                        OR 
                        New.endTime < P.endTime
                    )
                    OR 
                    (
                        New.startTime > P.startTime
                        OR 
                        New.endTime > P.endTime
                    )
                )
        );
END;