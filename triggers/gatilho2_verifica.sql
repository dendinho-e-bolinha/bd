SELECT
  subject.name as subject,
  term.name as term
from
  TermGrades,
  term, 
  Subject
WHERE
  termGrades.term = term.id
  AND termGrades.subject = subject.id;

INSERT INTO Period(id, startTime, endTime, weekday, subject, term, classroom) VALUES (89, 16:30:00, 17:30:00, 'saturday', 11, 2, 9);

SELECT
  subject.name as subject,
  term.name as term
from
  TermGrades,
  term, 
  Subject
WHERE
  termGrades.term = term.id
  AND termGrades.subject = subject.id;
