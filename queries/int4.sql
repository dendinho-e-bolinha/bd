-- SELECT
--   Term.name as term,
--   avg(gc.weight * gc.value) as final_grade
-- FROM
--   Term,
--   GradeComponent as gc,
--   termGrades as tg
-- WHERE
--   tg.grade = gc.id
--   AND tg.term = term.id
--   AND gc.parent IS NULL
--   AND gc.value IS NOT NULL
--   AND gc.weight IS NOT NULL
-- GROUP BY
--   term.id
-- ORDER BY
--   term.id DESC;


  WITH RECURSIVE Tree(term, id, value, weight) AS (
    SELECT tg.term,
        gc.id,
        gc.value,
        gc.weight
    FROM TermGrades tg,
        GradeComponent gc
    WHERE gc.id = tg.grade AND gc.value IS NOT NULL AND gc.weight IS NOT NULL
    UNION ALL
    SELECT Tree.term,
        GradeComponent.id,
        GradeComponent.value,
        GradeComponent.weight * Tree.weight
    FROM Tree,
        GradeComponent
    WHERE Tree.id = GradeComponent.parent AND GradeComponent.value IS NOT NULL AND GradeComponent.weight IS NOT NULL
)
SELECT Term.name,
    sum(value * weight) as grade
FROM Tree,
    Term
WHERE Term.id = Tree.term
    AND Tree.id NOT IN (
        SELECT gc.parent
        FROM GradeComponent gc
        WHERE gc.parent IS NOT NULL
    )
GROUP BY Tree.term;