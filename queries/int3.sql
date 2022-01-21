SELECT sum(value * weight)
FROM GradeComponent
WHERE parent = 4
    AND value IS NOT NULL
    AND weight IS NOT NULL;