PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

-- grades and blobs

-- Term

INSERT INTO Term VALUES (1, '1º Semestre 2020/2021', '2020-10-06', '2021-03-05');
INSERT INTO Term VALUES (2, '2º Semestre 2020/2021', '2021-02-22', '2021-07-16');
INSERT INTO Term VALUES (3, '1º Semestre 2021/2022', '2021-10-18', '2022-03-11');

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

INSERT INTO Professor(id, name, email, phone) VALUES (  -- ALGE
    1,
    'António Joaquim Mendes Ferreira',
    'ferreira@fe.up.pt',
    '+351 22 508 3462'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- AMAT
    2,
    'Alexandre Miguel Prior Afonso',
    'aafonso@fe.up.pt',
    '+351 22 508 1365'
);

INSERT INTO Professor(id, name, email) VALUES (  -- AMAT
    3,
    'Luís Jorge Lima Ferras',
    'lferras@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- AOCO
    4,
    'António José Duarte Araújo',
    'aja@fe.up.pt',
    '+351 22 508 3305'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- AOCO
    5,
    'João Paulo de Castro Canas Ferreira',
    'jcf@fe.up.pt',
    '+351 22 508 3367'
);

INSERT INTO Professor(id, name, email) VALUES (  -- FPRO
    6,
    'Afonso Manuel Maia Lopes Salgado de Sousa',
    'ammiss@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- FPRO
    7,
    'João António Correia Lopes',
    'jlopes@fe.up.pt',
    '+351 22 508 3375'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- MDIS
    8,
    'Gabriel de Sousa Torcato David',
    'gtd@fe.up.pt',
    '+351 22 508 3224'
);

INSERT INTO Professor(id, name, email) VALUES (  -- MDIS
    9,
    'Renato Borges Araujo Moura Soeiro',
    'rsoeiro@fe.up.pt'
);

------------------------------------------------------ 

INSERT INTO Professor(id, name, email, phone) VALUES (  -- CMAT
    10,
    'Ana Maria Azevedo Neves',
    'ananeves@fe.up.pt',
    '+351 22 508 2206'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- CMAT
    11,
    'José Augusto Trigo Barbosa',
    'jtrigo@fe.up.pt',
    '+351 22 508 3461'
);

INSERT INTO Professor(id, name, email, phone, website) VALUES (  -- FIS.1
    12, 
    'Jaime Enrique Villate Matiz', 
    'villate@fe.up.pt', 
    '+351 22 508 3138', 
    'https://villate.org/'
);

INSERT INTO Professor(id, name, email) VALUES (  -- FIS.1
    13,
    'Mercedes Esteves Filho',
    'mfilho@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- MEST
    14,
    'António Miguel da Fonseca Fernandes Gomes',
    'agomes@fe.up.pt',
    '+351 22 508 1573'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- MEST
    15,
    'João Pedro Carvalho Leal Mendes Moreira',
    'jmoreira@fe.up.pt',
    '+351 22 508 1573'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- MEST
    16,
    'Maria Alexandra Ramalho de Oliveira',
    'maoliveira@fe.up.pt',
    '+351 225083438'
);

INSERT INTO Professor(id, name, email) VALUES (  -- PROG
    17,
    'João Paulo Fernandes',
    'jpaulo@fe.up.pt'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- PROG
    18,
    'Jorge Alves da Silva',
    'jsilva@fe.up.pt',
    '+351 22 508 3394'
);

------------------------------------------------------

INSERT INTO Professor(id, name, email, phone) VALUES (  -- AED
    19, 
    'Ana Paula Cunha da Rocha', 
    'arocha@fe.up.pt', 
    '+351 22 508 3322'
);

INSERT INTO Professor(id, name, email) VALUES (  -- AED
    20, 
    'Pedro Manuel Pinto Ribeiro', 
    'pribeiro@fc.up.pt'
);


INSERT INTO Professor(id, name, email, phone) VALUES (  -- BD
    21,
    'Carla Alexandra Teixeira Lopes',
    'ctl@fe.up.pt',
    '+351 22 508 3246'
);
    
INSERT INTO Professor(id, name, email, phone) VALUES (  -- BD
    22, 
    'Michel Celestino Paiva Ferreira', 
    'mpferrei@fc.up.pt', 
    '+351 933 848 797'
);

INSERT INTO Professor(id, name, email, phone) VALUES (  -- LDTS
    23, 
    'André Monteiro de Oliveira Restivo', 
    'arestivo@fe.up.pt', 
    '+351 22 508 3321'
);

INSERT INTO Professor(id, name, email) VALUES (  -- LDTS
    24, 
    'Rui Filipe Lima Maranhão de Abreu', 
    'rma@fe.up.pt'
);

INSERT INTO Professor(id, name, email) VALUES (  -- TC
    25, 
    'João Carlos Viegas Martins Bispo', 
    'jbispo@fe.up.pt'
);
    
INSERT INTO Professor(id, name, email, phone) VALUES (  -- TC
    26, 
    'João Manuel Paiva Cardoso', 
    'jmpc@fe.up.pt', 
    '+351 22 508 3901'
);

-- Grade Limits

INSERT INTO GradeLimit VALUES (1, 0, 20);
INSERT INTO GradeLimit VALUES(2, 0, 1);

-- Evaluation Types

INSERT INTO EvaluationType VALUES (1, 'practical');
INSERT INTO EvaluationType VALUES (2, 'oral');
INSERT INTO EvaluationType VALUES (3, 'written');

-- Subjects and Grade Components

INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (1, 'Avaliação de ALGE', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (2, 'Avaliação de AMAT', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (3, 'Avaliação de AOCO', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (4, 'Avaliação de FPRO', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (5, 'Avaliação de MDIS', 1);

-------------------------------------------------

INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (6, 'Avaliação de CMAT', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (7, 'Avaliação de FISI1', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (8, 'Avaliação de MEST', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (9, 'Avaliação de MPCP', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (10, 'Avaliação de PROG', 1);

-------------------------------------------------

INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (11, 'Avaliação de AED', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (12, 'Avaliação de BD', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (13, 'Avaliação de F.II', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (14, 'Avaliação de LDTS', 1);
INSERT INTO GradeComponent(id, name, gradeLimit) VALUES (15, 'Avaliação de TC', 1);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    16,
    'MT ALGE',
    17.65,
    0.5,
    1,
    1
);

INSERT INTO GradeComponent VALUES (
    17,
    'MT2 ALGE',
    17,
    0.5,
    1,
    1
);

INSERT INTO GradeComponent VALUES (
    18,
    'MT AMAT',
    20,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    19,
    'MT 2 AMAT',
    18.67,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    20,
    'MT AOCO',
    18.5,
    0.5,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    21,
    'MT 2 AOCO',
    18.9,
    0.5,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    22,
    'Melhoria AOCO',
    17.6,
    0,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    23,
    'PEs FPRO',
    20,
    0.5,
    1,
    4
)

INSERT INTO GradeComponent VALUES (
    24,
    'PE1 FPRO',
    0,
    0,
    1,
    23
);


INSERT INTO GradeComponent VALUES (
    25,
    'PE2 FPRO',
    20,
    0.333,
    1,
    23
);


INSERT INTO GradeComponent VALUES (
    26,
    'PE3 FPRO',
    20,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    27,
    'PE4 FPRO',
    20,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    28,
    'PE4 FPRO',
    20,
    0.333,
    1,
    23
);

INSERT INTO GradeComponent VALUES (
    29,
    'AD FPRO (REs, LEs e PROJ)',
    20,
    0.2,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    30,
    'LEs FPRO',
    20,
    0,
    1,
    29
);

INSERT INTO GradeComponent VALUES (
    31,
    'REs FPRO',
    19.8,
    0,
    1,
    29
);

INSERT INTO GradeComponent VALUES (
    32,
    'PROJ',
    20,
    1,
    1,
    29
);

INSERT INTO GradeComponent VALUES (
    33,
    'TE1 FPRO',
    20,
    0.3,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    34,
    'MT1 MDIS',
    16.8,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    35,
    'MT2 MDIS',
    20,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    36,
    'MT3 MDIS',
    12.4,
    0.0625,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    36,
    'MT4 MDIS + KAHOOT',
    20,
    0.3125,
    1,
    5
);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    37,
    'MT1 CMAT',
    19.3,
    0.5,
    1,
    6
);

INSERT INTO GradeComponent VALUES (
    38,
    'MT2 CMAT',
    19.5,
    0.5,
    1,
    6
);

INSERT INTO GradeComponent VALUES (
    39,
    'MT1 FIS1',
    11.3,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    40,
    'MT2 FIS1',
    9,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    41,
    'Exame FISI',
    14,
    0,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    42,
    'Melhoria FISI',
    16.3,
    1,
    1,
    7
);

INSERT INTO GradeComponent VALUES (
    36,
    'MT3 MDIS',
    12.4,
    0.3125,
    1,
    8
);

INSERT INTO GradeComponent VALUES (
    36,
    'AD MPCP',
    19.6,
    0.5,
    1,
    // TODO
);

INSERT INTO GradeComponent VALUES (
    36,
    'Exercicios Assembly MPCP',
    20,
    0.4,
    1,
    //TODO
);

INSERT INTO GradeComponent VALUES (
    36,
    'Assiduidade MPCP',
    1,
    0.2,
    2,
    // TODO
);

INSERT INTO GradeComponent VALUES (
    43,
    'MT1 MPCP',
    19,
    0.4,
    1,
    // TODO
);

INSERT INTO GradeComponent VALUES (
    44,
    'Exame MPCP',
    18,
    0,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    43,
    'Melhoria MPCP',
    19.6,
    0.5,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    45,
    'Projetos PROG',
    19,
    0.4,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    45,
    'Projeto PROG 1',
    19.1,
    0.5,
    1,
    // TODO
);

INSERT INTO GradeComponent VALUES (
    45,
    'Projeto PROG 2',
    18.9,
    0.5,
    1,
    // TODO
);

INSERT INTO GradeComponent VALUES (
    45,
    'Exame PROG',
    19.6,
    0,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    45,
    'Melhoria PROG',
    20,
    0.6,
    1,
    10
);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    47,
    'MT1 AED',
    17.65,
    0.5,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    28,
    'MT2 AED',
    17.65,
    0.5,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    49,
    'Projeto',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    50,
    'Entrega 1',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    51,
    'Entrega 2',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    52,
    'Entrega 3',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    53,
    'Entrega 4',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    54,
    'Exame',
    17.65,
    0.5,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    55,
    'MT1',
    17.65,
    0.5,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    56,
    'Exame',
    17.65,
    0.5,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    57,
    'Projeto',
    17.65,
    0.5,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    58,
    'Entrega 1',
    17.65,
    0.5,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    59,
    'Entrega 2',
    17.65,
    0.5,
    1,
    4
);


---------------------------------------------

INSERT INTO Subject VALUES (
    60, 
    'Álgebra', 
    'EF9F7C', 
    1
);

INSERT INTO Subject VALUES (
    2, 
    'Análise Matemática', 
    'D17CEF', 
    2
);

INSERT INTO Subject VALUES (
    3, 
    'Arquitectura e Organização de Computadores', 
    'E1ED74', 
    3
);

INSERT INTO Subject VALUES (
    4, 
    'Fundamentos da Programação', 
    '7CE8EF', 
    4
);

INSERT INTO Subject VALUES (
    5, 
    'Matemática Discreta', 
    '92ED74', 
    5
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    6, 
    'Complementos de Matemática', 
    'EF9F7C', 
    6
);

INSERT INTO Subject VALUES (
    7, 
    'Física I', 
    '7CEFBD', 
    7
);

INSERT INTO Subject VALUES (
    8, 
    'Métodos Estatísticos', 
    '92ED74', 
    8
);

INSERT INTO Subject VALUES (
    9, 
    'Microprocessadores e Computadores Pessoais', 
    'E1ED74', 
    9
);

INSERT INTO Subject VALUES (
    10, 
    'Programação', 
    '7CE8EF', 
    10
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    11, 
    'Algoritmos e Estruturas de Dados', 
    'E1ED74', 
    11
);

INSERT INTO Subject VALUES (
    12, 
    'Bases de Dados', 
    '92ED74', 
    12
);

INSERT INTO Subject VALUES (
    13, 
    'Física 2', 
    'D17CEF', 
    13
);

INSERT INTO Subject VALUES (
    14, 
    'Laboratório de Desenho e Teste de Software', 
    'EF9F7C', 
    14
);

INSERT INTO Subject VALUES (
    15, 
    'Teoria da Computação', 
    '7CE8EF', 
    15
);

-- Term Subjects

INSERT INTO TermSubjects VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5); -- 1S 2020/2021
INSERT INTO TermSubjects VALUES (2, 6), (2, 7), (2, 8), (2, 9), (2, 10); -- 2S 2020/2021
INSERT INTO TermSubjects VALUES (3, 11), (3, 12), (3, 13), (3, 14), (3, 15); -- 1S 2021/2022

-- Classrooms

INSERT INTO Classroom VALUES (1, "EaD", 1);
INSERT INTO Classroom VALUES (2, "B005", 1);
INSERT INTO Classroom VALUES (3, "B011", 1);
INSERT INTO Classroom VALUES (4, "B013", 1);
INSERT INTO Classroom VALUES (5, "B014", 1);
INSERT INTO Classroom VALUES (6, "B017", 1);
INSERT INTO Classroom VALUES (7, "B103", 1);
INSERT INTO Classroom VALUES (8, "B110", 1);
INSERT INTO Classroom VALUES (9, "B201", 1);
INSERT INTO Classroom VALUES (10, "B208", 1);
INSERT INTO Classroom VALUES (11, "B213", 1);
INSERT INTO Classroom VALUES (12, "B304", 1);
INSERT INTO Classroom VALUES (13, "B308", 1);
INSERT INTO Classroom VALUES (14, "B323", 1);

-- Periods

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    1,
    '09:00:00',
    '10:30:00',
    'monday',
    3, -- AOCO
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    2,
    '10:30:00',
    '12:00:00',
    'monday',
    5, -- MDIS
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    3,
    '12:00:00',
    '13:30:00',
    'monday',
    4, -- FPRO
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    4,
    '08:30:00',
    '10:30:00',
    'tuesday',
    1, -- ALGE
    4 -- B013
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    5,
    '10:30:00',
    '12:30:00',
    'tuesday',
    4, -- FPRO
    10 -- B208
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    6,
    '14:00:00',
    '16:00:00',
    'tuesday',
    3, -- AOCO
    3 -- B011
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    7,
    '08:30:00',
    '10:00:00',
    'wednesday',
    5, -- MDIS
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    8,
    '10:00:00',
    '11:30:00',
    'wednesday',
    2, -- AMAT
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    9,
    '11:30:00',
    '13:30:00',
    'wednesday',
    1, -- ALGE
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    10,
    '09:00:00',
    '10:30:00',
    'thursday',
    2, -- AMAT
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    11,
    '10:30:00',
    '12:00:00',
    'thursday',
    4, -- FPRO
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    12,
    '12:00:00',
    '13:30:00',
    'thursday',
    3, -- AOCO
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    13,
    '09:00:00',
    '11:00:00',
    'friday',
    5, -- MDIS
    2 -- B005
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    14,
    '11:00:00',
    '13:00:00',
    'friday',
    2, -- AMAT
    2 -- B005
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    15,
    '09:00:00',
    '10:00:00',
    'monday',
    6, -- CMAT
    1 --EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    16,
    '10:00:00',
    '11:00:00',
    'monday',
    7, -- FISI1
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    17,
    '11:00:00',
    '12:30:00',
    'monday',
    10, -- PROG
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    18,
    '09:00:00',
    '11:00:00',
    'tuesday',
    7, -- FISI1
    5 -- B014
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    19,
    '11:00:00',
    '13:00:00',
    'tuesday',
    6, -- CMAT
    5 -- B014
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    20,
    '09:00:00',
    '10:00:00',
    'wednesday',
    7, -- FISI1
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    21,
    '10:00:00',
    '11:00:00',
    'wednesday',
    6, -- CMAT
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    22,
    '11:00:00',
    '13:00:00',
    'wednesday',
    8, -- MEST
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    23,
    '17:30:00',
    '19:30:00',
    'wednesday',
    10, -- PROG
    9 -- B201
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    24,
    '09:00:00',
    '10:30:00',
    'thursday',
    10, -- PROG      
    1 -- EaD
);


INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    25,
    '10:30:00',
    '12:30:00', 
    'thursday',  
    9, -- MPCP
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    26,
    '13:30:00',
    '15:30:00', 
    'friday',  
    9, -- MPCP
    9 -- B201
); 

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    27,
    '15:30:00',
    '17:30:00',
    'friday', 
    8, -- MEST 
    6 -- B017
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    28,
    '14:00:00',
    '15:00:00',
    'monday',
    11, -- AED
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    29,
    '15:00:00',
    '16:00:00',
    'monday',
    12, -- BD
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    30,
    '16:00:00',
    '17:30:00',
    'monday',
    13, -- F.II
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    31,
    '14:00:00',
    '16:00:00',
    'tuesday',
    15, -- TC
    8  -- B110
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    32,
    '16:00:00',
    '18:00:00',
    'tuesday',
    14, -- LDTS
    12 -- B304
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    33,
    '09:00:00',
    '11:00:00',
    'wednesday',
    11, -- AED
    13 -- B308
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    34,
    '11:00:00',
    '12:30:00',
    'wednesday',
    13, -- F.II
    14 -- B323
); 
  
INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    35,
    '14:00:00',
    '16:00:00',
    'thursday',
    14, -- LDTS
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    36,
    '16:00:00',
    '18:00:00',
    'thursday',
    15, -- TC
    1  --EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    37,
    '18:00:00',
    '19:00:00',
    'thursday',
    11, -- AED
    1  -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    38,
    '19:00:00',
    '20:00:00',
    'thursday',
    12, -- BD
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, classroom) VALUES (
    39,
    '14:00:00',
    '16:00:00',
    'friday',
    12, -- BD
    7 -- B103
);

-- Tasks

INSERT INTO Task(id, name, done, subject) VALUES (
    1,
    'Ver aulas de AOCO',
    1, -- done
    3 -- AOCO
);

INSERT INTO Task VALUES (
    2,
    'Fazer projeto de PROG',
    'Implementar leitura de ficheiros e dar commit',
    1, -- done
    10 -- PROG
);

INSERT INTO Task VALUES (
    3,
    'Estudar AED',
    'Ver slides sobre algoritmos de Sorting',
    0, -- not done
    11 -- AED
);

INSERT INTO Task VALUES (
    4,
    'Fazer projeto de BD',
    'Acabar 1ª entrega do trabalho',
    1, -- done
    12 -- BD
);

INSERT INTO Task VALUES (
    5,
    'Fazer projeto de BD',
    'Acabar relatório e povoamento da base de dados',
    0, -- not done
    12 -- BD
);


-- Lecturers

INSERT INTO Lecturer VALUES (
    1,
    5
);

INSERT INTO Lecturer VALUES (
    2,
    8
);

INSERT INTO Lecturer VALUES (
    3,
    7
);

INSERT INTO Lecturer VALUES (
    4,
    1
);

INSERT INTO Lecturer VALUES (
    5,
    6
);

INSERT INTO Lecturer VALUES (
    6,
    4
);
INSERT INTO Lecturer VALUES (
    7,
    8
);

INSERT INTO Lecturer VALUES (
    8,
    2
);

INSERT INTO Lecturer VALUES (
    9,
    1
);

INSERT INTO Lecturer VALUES (
    10,
    2
);

INSERT INTO Lecturer VALUES (
    11,
    7
);

INSERT INTO Lecturer VALUES (
    12,
    5
);

INSERT INTO Lecturer VALUES (
    13,
    9
);

INSERT INTO Lecturer VALUES (
    14,
    3
);

-------------------------------------------------

INSERT INTO Lecturer VALUES (
    15,
    11
);


INSERT INTO Lecturer VALUES (
    16,
    12
);


INSERT INTO Lecturer VALUES (
    17,
    18
);


INSERT INTO Lecturer VALUES (
    18,
    13
);


INSERT INTO Lecturer VALUES (
    19,
    10
);


INSERT INTO Lecturer VALUES (
    20,
    12
);

INSERT INTO Lecturer VALUES (
    21,
    11
);


INSERT INTO Lecturer VALUES (
    22,
    14
);


INSERT INTO Lecturer VALUES (
    22,
    15
);


INSERT INTO Lecturer VALUES (
    23,
    17
);

INSERT INTO Lecturer VALUES (
    24,
    18
);


INSERT INTO Lecturer VALUES (
    25,
    5
);


INSERT INTO Lecturer VALUES (
    26,
    5
);


INSERT INTO Lecturer VALUES (
    27,
    16
);

-------------------------------------------------

INSERT INTO Lecturer VALUES (
    28,
    19
);


INSERT INTO Lecturer VALUES (
    28,
    20
);

INSERT INTO Lecturer VALUES (
    29,
    21
);

INSERT INTO Lecturer VALUES (
    29,
    22
);

INSERT INTO Lecturer VALUES (
    30,
    12
);

INSERT INTO Lecturer VALUES (
    31,
    25
);

INSERT INTO Lecturer VALUES (
    32,
    23
);

INSERT INTO Lecturer VALUES (
    33,
    19
);

INSERT INTO Lecturer VALUES (
    34,
    12
);

INSERT INTO Lecturer VALUES (
    35,
    24
);

INSERT INTO Lecturer VALUES (
    36,
    26
);

INSERT INTO Lecturer VALUES (
    37,
    19
);

INSERT INTO Lecturer VALUES (
    37,
    20
);

INSERT INTO Lecturer VALUES (
    38,
    21
);

INSERT INTO Lecturer VALUES (
    38,
    22
);

INSERT INTO Lecturer VALUES (
    39,
    21
);

-- Evaluation Events

INSERT INTO EvaluationEvent VALUES (
    1,

);

-------------------------------------------------

-------------------------------------------------

-- Professor photos

UPDATE Professor SET photo = x'' WHERE id = 1;
UPDATE Professor SET photo = x'' WHERE id = 2;
UPDATE Professor SET photo = x'' WHERE id = 3;
UPDATE Professor SET photo = x'' WHERE id = 4;
UPDATE Professor SET photo = x'' WHERE id = 5;
UPDATE Professor SET photo = x'' WHERE id = 6;
UPDATE Professor SET photo = x'' WHERE id = 7;
UPDATE Professor SET photo = x'' WHERE id = 8;
UPDATE Professor SET photo = x'' WHERE id = 9;
UPDATE Professor SET photo = x'' WHERE id = 10;
UPDATE Professor SET photo = x'' WHERE id = 11;
UPDATE Professor SET photo = x'' WHERE id = 12;
UPDATE Professor SET photo = x'' WHERE id = 13;
UPDATE Professor SET photo = x'' WHERE id = 14;
UPDATE Professor SET photo = x'' WHERE id = 15;
UPDATE Professor SET photo = x'' WHERE id = 16;
UPDATE Professor SET photo = x'' WHERE id = 17;
UPDATE Professor SET photo = x'' WHERE id = 18;
UPDATE Professor SET photo = x'' WHERE id = 19;
UPDATE Professor SET photo = x'' WHERE id = 20;
UPDATE Professor SET photo = x'' WHERE id = 21;
UPDATE Professor SET photo = x'' WHERE id = 22;
UPDATE Professor SET photo = x'' WHERE id = 23;
UPDATE Professor SET photo = x'' WHERE id = 24;
UPDATE Professor SET photo = x'' WHERE id = 25;
UPDATE Professor SET photo = x'' WHERE id = 26;

COMMIT;