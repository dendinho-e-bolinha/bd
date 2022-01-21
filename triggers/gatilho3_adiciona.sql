CREATE TRIGGER gradeWithinLimits BEFORE
INSERT
  ON GradeComponent FOR EACH ROW BEGIN
SELECT
  RAISE(ABORT, 'The grade is not within chosen limits')
WHERE
  NOT EXISTS (
    SELECT
      gradeLimit.upper as upper,
      gradeLimit.lower as lower
    FROM
      GradeLimit
    WHERE
      New.gradeLimit = GradeLimit.id
      AND New.value <= upper
      AND New.value >= lower
  );
END;
