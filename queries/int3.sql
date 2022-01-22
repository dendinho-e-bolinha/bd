WITH RECURSIVE Tree(term, id, value, weight) AS (
    SELECT tg.term,
        gc.id,
        gc.value,
        1
    FROM TermGrades tg,
        GradeComponent gc,
        Subject s
    WHERE gc.id = tg.grade
        AND s.id = tg.subject
        AND s.name = 'Fundamentos da Programação'
    UNION ALL
    SELECT Tree.term,
        GradeComponent.id,
        GradeComponent.value,
        GradeComponent.weight * Tree.weight
    FROM Tree,
        GradeComponent
    WHERE Tree.id = GradeComponent.parent
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