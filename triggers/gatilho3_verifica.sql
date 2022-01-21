SELECT
  name,
  value,
  gl.lower,
  gl.upper
FROM
  GradeComponent as gc,
  GradeLimit as gl
WHERE
  gc.gradeLimit = gl.id;

INSERT INTO GradeComponent VALUES (89, 'Enunciado de MEST', 30, 0.8, 1, 8);

SELECT
  name,
  value,
  gl.lower,
  gl.upper
FROM
  GradeComponent as gc,
  GradeLimit as gl
WHERE
  gc.gradeLimit = gl.id;

INSERT INTO GradeComponent VALUES (90, 'Teste Surpresa', 15, 1, 1, 11);

SELECT
  name,
  value,
  gl.lower,
  gl.upper
FROM
  GradeComponent as gc,
  GradeLimit as gl
WHERE
  gc.gradeLimit = gl.id;
