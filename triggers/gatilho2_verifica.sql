SELECT
  Period.id,
  startTime as start,
  endTime as
end,
weekday,
Subject.name as subject
FROM
  Period,
  Subject
WHERE
  period.subject = subject.id;

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (89, '16:30:00', '17:30:00', 'saturday', 11, 3, 9);

SELECT
  Period.id,
  startTime as start,
  endTime as
end,
weekday,
Subject.name as subject
FROM
  Period,
  Subject
WHERE
  period.subject = subject.id;

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (100, '18:30:00', '20:30:00', 'sunday', 1, 2, 9);

SELECT
  Period.id,
  startTime as start,
  endTime as
end,
weekday,
Subject.name as subject
FROM
  Period,
  Subject
WHERE
  period.subject = subject.id;
