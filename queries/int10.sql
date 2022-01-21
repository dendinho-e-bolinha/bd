.read criar.sql
.read povoar.sql

INSERT INTO GradeComponent
VALUES (90, '1', NULL, 1, 1, NULL),
    (91, '2', NULL, 1, 1, NULL),
    (92, '1L', NULL, 0.15, 1, 90),
    (93, '1M', NULL, 0.60, 1, 90),
    (94, '1R', NULL, 0.15, 1, 90),
    (95, '1LL', NULL, 0.80, 1, 92),
    (96, '1LR', NULL, 0.20, 1, 92),
    (97, '2L', NULL, 0.15, 1, 91),
    (98, '2M', NULL, 0.60, 1, 91),
    (99, '2R', NULL, 0.15, 1, 91),
    (100, '2LL', NULL, 0.80, 1, 97),
    (101, '2LR', NULL, 0.20, 1, 97),
    (102, '1D', NULL, 0.1, 1, 90),
    (103, '1DL', NULL, 0.80, 1, 102),
    (104, '1DR', NULL, 0.20, 1, 102),
    (105, '2D', NULL, 0.1, 1, 91),
    (106, '2DL', NULL, 0.80, 1, 105),
    (107, '2DR', NULL, 0.20, 1, 105)
    ;

CREATE VIEW LayersSimilar AS
SELECT gc1.id AS id1,
    gc2.id AS id2
FROM GradeComponent gc1,
    GradeComponent gc2
WHERE gc1.id != gc2.id
    AND NOT EXISTS (
        SELECT *
        FROM (
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc1.id
                GROUP BY weight
                EXCEPT
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc2.id
                GROUP BY weight
            )
        UNION ALL
        SELECT *
        FROM (
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc2.id
                GROUP BY weight
                EXCEPT
                SELECT count(*) AS nr,
                    weight
                FROM GradeComponent
                WHERE parent = gc1.id
                GROUP BY weight
            )
    );


-- SELECT
--     gc1.id, gc2.id
--     FROM GradeComponent gc1, GradeComponent gc2 WHERE
WITH RECURSIVE Similar(id1, id2) AS (
    SELECT 90, 91 WHERE (90, 91) IN LayersSimilar
    UNION ALL
    SELECT c1.id,
        c2.id
    FROM Similar,
        GradeComponent c1,
        GradeComponent c2
    WHERE Similar.id1 = c1.parent
        AND Similar.id2 = c2.parent
        AND (c1.id, c2.id) IN LayersSimilar
), Tree1(id) AS (
    SELECT 90
    UNION ALL
    SELECT GradeComponent.id FROM Tree1, GradeComponent WHERE Tree1.id = GradeComponent.parent
), Tree2(id) AS (
    SELECT 91
    UNION ALL
    SELECT GradeComponent.id FROM Tree2, GradeComponent WHERE Tree2.id = GradeComponent.parent
)
SELECT NOT EXISTS (
        SELECT *
        FROM (
                SELECT DISTINCT id1 as id FROM Similar
                EXCEPT
                SELECT id FROM Tree1
            )
        UNION ALL
        SELECT *
        FROM (
                SELECT id FROM Tree1
                EXCEPT
                SELECT DISTINCT id1 as id FROM Similar
            )
) AND NOT EXISTS (
    SELECT *
        FROM (
                SELECT DISTINCT id2 as id FROM Similar
                EXCEPT
                SELECT id FROM Tree2
            )
        UNION ALL
        SELECT *
        FROM (
                SELECT id FROM Tree2
                EXCEPT
                SELECT DISTINCT id2 as id FROM Similar
            )
) 
AND NOT EXISTS (
    SELECT *, count(*) as nr1 FROM Similar s1, (SELECT id2, count(*) as nr2 FROM Similar GROUP BY id2) s2 WHERE s2.id2=s1.id2 GROUP BY s1.id1 HAVING nr1 != nr2
) as equals;

DROP VIEW LayersSimilar;