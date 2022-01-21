SELECT
  Term.name as term,
  avg(gc.weight * gc.value)
FROM
  Term,
  GradeComponent as gc,
  termGrades as tg
WHERE
  tg.grade = gc.id
  AND tg.term = term.id
  AND gc.parent IS NULL
  AND gc.value IS NOT NULL
  AND gc.weight IS NOT NULL
GROUP BY
  term.id
ORDER BY
  term.id DESC;