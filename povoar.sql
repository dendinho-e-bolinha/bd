PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

INSERT INTO Term VALUES (1, '1º Semestre 2020/2021', '2020-10-06', '2021-03-05');
INSERT INTO Term VALUES (2, '2º Semestre 2021/2022', '2021-02-22', '2021-07-16');
INSERT INTO Term VALUES (3, '1º Semestre 2021/2022', '2021-10-18', '2021-03-11');

-- Institutions
INSERT INTO Institution(id, name, address, email, phone, website) VALUES (
    1,
    'Faculdade de Engenharia da Universidade do Porto',
    'Rua Dr. Roberto Frias, s/n 4200-465 Porto PORTUGAL',
    'feup@fe.up.pt',
    '+351 22 508 1411',
    'https://sigarra.up.pt/feup'
);

-- Professors
INSERT INTO Professor(id, name, email, phone) VALUES (
    1,
    'Carla Alexandra Teixeira Lopes',
    'ctl@fe.up.pt',
    '+351 22 508 3246'
);
    
INSERT INTO Professor(id, name, email, phone) VALUES (
    2, 
    'Michel Celestino Paiva Ferreira', 
    'mpferrei@fc.up.pt', 
    '+351 933 848 797'
);

INSERT INTO Professor(id, name, email, phone, website) VALUES (
    3, 
    'Jaime Enrique Villate Matiz', 
    'villate@fe.up.pt', 
    '+351 22 508 3138', 
    'https://villate.org/'
);

INSERT INTO Professor(id, name, email) VALUES (
    4, 
    'Rui Filipe Lima Maranhão de Abreu', 
    'rma@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    5, 
    'André Monteiro de Oliveira Restivo', 
    'arestivo@fe.up.pt', 
    '+351 22 508 3321'
);

INSERT INTO Professor(id, name, email) VALUES (
    6, 
    'Pedro Manuel Pinto Ribeiro', 
    'pribeiro@fc.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (
    7, 
    'Ana Paula Cunha da Rocha', 
    'arocha@fe.up.pt', 
    '+351 22 508 3322'
);

INSERT INTO Professor(id, name, email) VALUES (
    8, 
    'João Carlos Viegas Martins Bispo', 
    'jbispo@fe.up.pt'
);
    

INSERT INTO Professor(id, name, email, phone) VALUES (
    9, 
    'João Manuel Paiva Cardoso', 
    'jmpc@fe.up.pt', 
    '+351 22 508 3901'
);

-- Grade Limits
INSERT INTO GradeLimit VALUES (1, 0, 20);

-- Subjects

INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (1, 'Avaliação de BD', 1)
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (2, 'Avaliação de F.II', 1)
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (3, 'Avaliação de AED', 1)
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (4, 'Avaliação de LDTS', 1)
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (5, 'Avaliação de TC', 1)


INSERT INTO Subject VALUES (
    1, 
    'Bases de Dados', 
    x'00FF00', 
    1
);

INSERT INTO Subject VALUES (
    2, 
    'Física 2', 
    x'FF0000', 
    2
);

INSERT INTO Subject VALUES (
    3, 
    'Algoritmos e Estruturas de Dados', 
    x'FFFF33', 
    3
);

INSERT INTO Subject VALUES (
    4, 
    'Laboratório de Desenho e Teste de Software', 
    x'FF8C19', 
    4
);

INSERT INTO Subject VALUES (
    5, 
    'Teoria da Computação', 
    x'0055FF', 
    5
);


-- Classrooms
INSERT INTO Classroom VALUES (1, "EaD", 1);
INSERT INTO Classroom VALUES (2, "B103", 1);
INSERT INTO Classroom VALUES (3, "B110", 1);
INSERT INTO Classroom VALUES (4, "B213", 1);
INSERT INTO Classroom VALUES (5, "B304", 1);
INSERT INTO Classroom VALUES (6, "B308", 1);
INSERT INTO Classroom VALUES (7, "B323", 1);

-- Period
INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    1,
    '14:00:00',
    '15:00:00',
    'monday',
    3,
    1
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    2,
    '15:00:00',
    '16:00:00',
    'monday',
    1,
    1
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    3,
    '16:00:00',
    '17:30:00',
    'monday',
    2,
    1
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    4,
    '14:00:00',
    '16:00:00',
    'tuesday',
    5,
    3 
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    5,
    '16:00:00',
    '18:00:00',
    'tuesday',
    4,
    5
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    6,
    '09:00:00',
    '11:00:00',
    'wednesday',
    3,
    6
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    7,
    '11:00:00',
    '12:30:00',
    'wednesday',
    2,
    7  
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    8,
    '14:00:00',
    '16:00:00',
    'thursday',
    4,
    1 
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    9,
    '16:00:00',
    '18:00:00',
    'thursday',
    5,
    1
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    10,
    '18:00:00',
    '19:00:00',
    'thursday',
    3,
    1  
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    11,
    '19:00:00',
    '20:00:00',
    'thursday',
    1,
    1 
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    12,
    '14:00:00',
    '16:00:00',
    'friday',
    1,
    2
);


-- Tasks
INSERT INTO Task VALUES (
    1,
    'Estudar AED',
    'Ver slides sobre algoritmos de Sorting',
    0,
    3,
);

INSERT INTO Task VALUES (
    2,
    'Fazer projeto de BD',
    'Acabar 1ª entrega do trabalho',
    1,
    1
)

INSERT INTO Task VALUES (
    3,
    'Fazer projeto de BD',
    'Acabar relatório e povoamento da base de dados',
    0,
    1,
);


-- Professor
UPDATE Professor WHERE id = 1 SET photo = x''
UPDATE Professor WHERE id = 2 SET photo = x''
UPDATE Professor WHERE id = 3 SET photo = x''
UPDATE Professor WHERE id = 4 SET photo = x''
UPDATE Professor WHERE id = 5 SET photo = x''
UPDATE Professor WHERE id = 6 SET photo = x''
UPDATE Professor WHERE id = 7 SET photo = x''
UPDATE Professor WHERE id = 8 SET photo = x''
UPDATE Professor WHERE id = 9 SET photo = x''

COMMIT;
