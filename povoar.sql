PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

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

INSERT INTO EvaluationType VALUES (1, 'oral');
INSERT INTO EvaluationType VALUES (2, 'practical');
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
    'MT1 ALGE',
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
    'MT1 AMAT',
    20,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    19,
    'MT2 AMAT',
    18.67,
    0.5,
    1,
    2
);

INSERT INTO GradeComponent VALUES (
    20,
    'MT1 AOCO',
    18.5,
    0.5,
    1,
    3
);

INSERT INTO GradeComponent VALUES (
    21,
    'MT2 AOCO',
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
);

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
    'AD FPRO (REs, LEs e PROJ)',
    20,
    0.2,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    29,
    'LEs FPRO',
    20,
    0,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    30,
    'REs FPRO',
    19.8,
    0,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    31,
    'PROJ FPRO',
    20,
    1,
    1,
    28
);

INSERT INTO GradeComponent VALUES (
    32,
    'TE1 FPRO',
    20,
    0.3,
    1,
    4
);

INSERT INTO GradeComponent VALUES (
    33,
    'MT1 MDIS',
    16.8,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    34,
    'MT2 MDIS',
    20,
    0.3125,
    1,
    5
);

INSERT INTO GradeComponent VALUES (
    35,
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
    43,
    'Projeto MEST',
    19.1,
    0.3,
    1,
    8
);

INSERT INTO GradeComponent VALUES (
    44,
    'Exame MEST',
    11.4,
    0.7,
    1,
    8
);

INSERT INTO GradeComponent VALUES (
    45,
    'AD MPCP',
    19.6,
    0.5,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    46,
    'Exercicios Assembly MPCP',
    20,
    0.4,
    1,
    45
);

INSERT INTO GradeComponent VALUES (
    47,
    'Assiduidade MPCP',
    1,
    0.2,
    2,
    45
);

INSERT INTO GradeComponent VALUES (
    48,
    'MT1 MPCP',
    19,
    0.4,
    1,
    45
);

INSERT INTO GradeComponent VALUES (
    49,
    'Exame MPCP',
    18,
    0,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    50,
    'Melhoria MPCP',
    19.6,
    0.5,
    1,
    9
);

INSERT INTO GradeComponent VALUES (
    51,
    'Projetos PROG',
    19,
    0.4,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    52,
    'Projeto PROG 1',
    19.1,
    0.5,
    1,
    51
);

INSERT INTO GradeComponent VALUES (
    53,
    'Projeto PROG 2',
    18.9,
    0.5,
    1,
    51
);

INSERT INTO GradeComponent VALUES (
    54,
    'Exame PROG',
    19.6,
    0,
    1,
    10
);

INSERT INTO GradeComponent VALUES (
    55,
    'Melhoria PROG',
    20,
    0.6,
    1,
    10
);

-------------------------------------------------

INSERT INTO GradeComponent VALUES (
    56,
    'Trabalhos de Grupo AED',
    0,
    0.4,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    57,
    'Trabalho 1 AED',
    0,
    0.5,
    1,
    56
);

INSERT INTO GradeComponent VALUES (
    58,
    'Trabalho 2 AED',
    0,
    0.5,
    1,
    56
);

INSERT INTO GradeComponent VALUES (
    59,
    'MTs Práticos AED',
    0,
    0.3,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    60,
    'MTP1 AED',
    0,
    0.5,
    1,
    59
);

INSERT INTO GradeComponent VALUES (
    61,
    'MTP2 AED',
    0,
    0.5,
    1,
    59
);

INSERT INTO GradeComponent VALUES (
    62,
    'MT Teóricos AED',
    0,
    0.3,
    1,
    11
);

INSERT INTO GradeComponent VALUES (
    63,
    'MTT1 AED',
    0,
    0.5,
    1,
    62
);

INSERT INTO GradeComponent VALUES (
    64,
    'MTT2 AED',
    0,
    0.5,
    1,
    63
);

INSERT INTO GradeComponent VALUES (
    65,
    'Projeto BD',
    0,
    0.35,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    66,
    'Entrega 1 BD',
    18.9,
    0.25,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    67,
    'Entrega 2 BD',
    0,
    0.5,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    68,
    'Entrega 3 BD',
    0,
    0.25,
    1,
    65
);

INSERT INTO GradeComponent VALUES (
    69,
    'Exame BD',
    0,
    0.65,
    1,
    12
);

INSERT INTO GradeComponent VALUES (
    70,
    'MT FIS2',
    0,
    0.4,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    71,
    'Exame FIS2',
    0,
    0.6,
    1,
    13
);

INSERT INTO GradeComponent VALUES (
    72,
    'Projeto LDTS',
    0,
    0.6,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    73,
    'Entrega 1 LDTS',
    0,
    0.1,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    74,
    'Entrega 2 LDTS',
    0,
    0.6,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    75,
    'Entrega 3 LDTS',
    0,
    0.3,
    1,
    72
);

INSERT INTO GradeComponent VALUES (
    76,
    'Participação LDTS',
    0,
    0.1,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    77,
    'Teste LDTS',
    0,
    0.3,
    1,
    14
);

INSERT INTO GradeComponent VALUES (
    78,
    'AD TC',
    0,
    0.25,
    1,
    15
);

INSERT INTO GradeComponent VALUES (
    79,
    'PAs TC',
    0,
    0.1,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    80,
    'AAs TC',
    0,
    0.6,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    81,
    'CAs TC',
    0,
    0.3,
    1,
    78
);

INSERT INTO GradeComponent VALUES (
    82,
    'Exame TC',
    0,
    0.75,
    1,
    15
);

---------------------------------------------

INSERT INTO Subject VALUES (
    1, 
    'Álgebra', 
    'EF9F7C'
);

INSERT INTO Subject VALUES (
    2, 
    'Análise Matemática', 
    'D17CEF'
);

INSERT INTO Subject VALUES (
    3, 
    'Arquitectura e Organização de Computadores', 
    'E1ED74'
);

INSERT INTO Subject VALUES (
    4, 
    'Fundamentos da Programação', 
    '7CE8EF'
);

INSERT INTO Subject VALUES (
    5, 
    'Matemática Discreta', 
    '92ED74'
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    6, 
    'Complementos de Matemática', 
    'EF9F7C'
);

INSERT INTO Subject VALUES (
    7, 
    'Física I', 
    '7CEFBD'
);

INSERT INTO Subject VALUES (
    8, 
    'Métodos Estatísticos', 
    '92ED74'
);

INSERT INTO Subject VALUES (
    9, 
    'Microprocessadores e Computadores Pessoais', 
    'E1ED74'
);

INSERT INTO Subject VALUES (
    10, 
    'Programação', 
    '7CE8EF' 
);

-------------------------------------------------

INSERT INTO Subject VALUES (
    11, 
    'Algoritmos e Estruturas de Dados', 
    'E1ED74' 
);

INSERT INTO Subject VALUES (
    12, 
    'Bases de Dados', 
    '92ED74' 
);

INSERT INTO Subject VALUES (
    13, 
    'Física 2', 
    'D17CEF'
);

INSERT INTO Subject VALUES (
    14, 
    'Laboratório de Desenho e Teste de Software', 
    'EF9F7C' 
);

INSERT INTO Subject VALUES (
    15, 
    'Teoria da Computação', 
    '7CE8EF' 
);

-- Term Grades

INSERT INTO TermGrades VALUES(
    1,
    1,
    1
);

INSERT INTO TermGrades VALUES(
    1,
    2,
    2
);

INSERT INTO TermGrades VALUES(
    1,
    3,
    3
);

INSERT INTO TermGrades VALUES(
    1,
    4,
    4
);

INSERT INTO TermGrades VALUES(
    1,
    5,
    5
);

INSERT INTO TermGrades VALUES(
    2,
    6,
    6
);

INSERT INTO TermGrades VALUES(
    2,
    7,
    7
);

INSERT INTO TermGrades VALUES(
    2,
    8,
    8
);

INSERT INTO TermGrades VALUES(
    2,
    9,
    9
);

INSERT INTO TermGrades VALUES(
    2,
    10,
    10
);

INSERT INTO TermGrades VALUES(
    3,
    11,
    11
);

INSERT INTO TermGrades VALUES(
    3,
    12,
    12
);

INSERT INTO TermGrades VALUES(
    3,
    13,
    13
);

INSERT INTO TermGrades VALUES(
    3,
    14,
    14
);

INSERT INTO TermGrades VALUES(
    3,
    15,
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

---------------------------------------------

INSERT INTO EvaluationEvent VALUES (
    1,
    'MT1 ALGE',
    '2020-12-12 08:30:00',
    '2020-12-12 10:00:00',
    1, -- ALGE
    7, -- B103
    3, -- Written
    16  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    2,
    'MT2 ALGE',
    '2021-02-01 08:30:00',
    '2021-02-01 10:00:00',
    1, -- ALGE
    14, -- B323
    3, -- Written
    17  -- MT2 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    3,
    'MT1 AMAT',
    '2020-12-09 08:30:00',
    '2020-12-09 10:00:00',
    2, -- AMAT
    7, -- B103
    3, -- Written
    18  -- MT1 AMAT
);

INSERT INTO EvaluationEvent VALUES (
    4,
    'MT2 AMAT',
    '2021-01-27 08:30:00',
    '2021-01-27 10:00:00',
    2, -- AMAT
    12, -- B103
    3, -- Written
    19 
);

INSERT INTO EvaluationEvent VALUES (
    5,
    'MT1 AOCO',
    '2020-12-05 08:30:00',
    '2020-12-05 10:00:00',
    3, -- AOCO
    11, -- B103
    3, -- Written
    20 
);

INSERT INTO EvaluationEvent VALUES (
    6,
    'MT2 AOCO',
    '2021-01-23 10:00:00',
    '2021-01-23 12:30:00',
    3, -- AOCO
    2, -- B103
    3, -- Written
    21
);

INSERT INTO EvaluationEvent VALUES (
    7,
    'Melhoria AOCO',
    '2021-09-13 14:30:00',
    '2021-09-13 16:00:00',
    3, -- ALGE
    7, -- B103
    3, -- Written
    22  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    8,
    'PE1 FPRO',
    '2020-11-07 08:30:00',
    '2020-11-07 10:00:00',
    4, -- ALGE
    12, -- B103
    3, -- Written
    24  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    9,
    'PE2 FPRO',
    '2020-12-02 08:30:00',
    '2020-12-02 10:00:00',
    4, -- ALGE
    7, -- B103
    3, -- Written
    25  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    10,
    'PE3 FPRO',
    '2021-01-09 08:30:00',
    '2021-01-09 10:00:00',
    4, -- ALGE
    7, -- B103
    3, -- Written
    26  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    11,
    'PE4 FPRO',
    '2021-01-29 08:30:00',
    '2021-01-29 10:00:00',
    4, -- ALGE
    7, -- B103
    3, -- Written
    27  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    12,
    'LEs FPRO',
    '2020-10-12 13:20:00',
    '2021-01-21 12:00:00',
    4, -- ALGE
    1, -- B103
    3, -- Written
    29 -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    13,
    'REs FPRO',
    '2020-10-19 08:00:00',
    '2021-01-25 08:00:00',
    4, -- ALGE
    NULL, -- B103
    2, -- Written
    30  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    14,
    'Projeto FPRO',
    '2020-12-04 00:00:00',
    '2021-01-25 23:59:59',
    4, -- ALGE
    NULL, -- B103
    2, -- Written
    31  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    15,
    'TE1 FPRO',
    '2021-02-03 08:30:00',
    '2021-02-03 10:00:00',
    4, -- ALGE
    13, -- B103
    3, -- Written
    32  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    16,
    'MT1 MDIS',
    '2020-10-31 11:30:00',
    '2020-10-31 13:00:00',
    5, -- ALGE
    14, -- B103
    3, -- Written
    33  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    17,
    'MT2 MDIS',
    '2020-11-28 11:30:00',
    '2020-11-28 13:00:00',
    5, -- ALGE
    7, -- B103
    3, -- Written
    34  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    18,
    'MT3 MDIS',
    '2020-12-19 09:00:00',
    '2020-12-19 10:30:00',
    5, -- ALGE
    7, -- B103
    3, -- Written
    35  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    19,
    'MT4 MDIS',
    '2021-01-25 08:30:00',
    '2021-01-25 10:00:00',
    5, -- ALGE
    10, -- B103
    3, -- Written
    36  -- MT1 ALGE
);

---------------------------------------------


INSERT INTO EvaluationEvent VALUES (
    20,
    'MT1 CMAT',
    '2021-04-24 09:00:00',
    '2021-04-24 10:30:00',
    6, -- ALGE
    4, -- B103
    3, -- Written
    37  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    21,
    'MT2 CMAT',
    '2021-06-07 09:00:00',
    '2021-06-07 10:30:00',
    6, -- ALGE
    7, -- B103
    3, -- Written
    38  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    22,
    'MT1 FIS1',
    '2021-04-11 08:30:00',
    '2021-04-11 10:00:00',
    7, -- ALGE
    4, -- B103
    3, -- Written
    39  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    23,
    'MT2 FIS1',
    '2021-06-10 08:30:00',
    '2021-06-10 10:00:00',
    7, -- ALGE
    12, -- B103
    3, -- Written
    40  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    24,
    'Exame FIS1',
    '2021-06-21 08:30:00',
    '2021-06-21 10:00:00',
    7, -- ALGE
    10, -- B103
    3, -- Written
    41  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    25,
    'Melhoria FIS1',
    '2021-07-21 13:30:00',
    '2021-07-21 15:00:00',
    7, -- ALGE
    7, -- B103
    3, -- Written
    42  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    26,
    'Projeto MEST',
    '2021-03-02 00:00:00',
    '2021-03-16 23:59:59',
    8, -- ALGE
    NULL, -- B103
    2, -- Written
    43  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    27,
    'Exame MEST',
    '2021-06-12 11:00:00',
    '2021-06-12 12:30:00',
    8, -- ALGE
    6, -- B103
    2, -- Written
    44  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    28,
    'Exercícios Assembly MPCP',
    '2021-04-28 00:00:00',
    '2021-06-10 23:59:59',
    9, -- ALGE
    NULL, -- B103
    2, -- Written
    46  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    29,
    'MT1 MPCP',
    '2021-05-15 08:30:00',
    '2021-05-15 10:00:00',
    9, -- ALGE
    10, -- B103
    3, -- Written
    48  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    30,
    'Exame MPCP',
    '2021-06-15 08:30:00',
    '2021-06-15 10:00:00',
    9, -- ALGE
    7, -- B103
    3, -- Written
    49  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    31,
    'Melhoria MPCP',
    '2021-07-03 14:30:00',
    '2021-07-03 16:00:00',
    9, -- ALGE
    10, -- B103
    3, -- Written
    50  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    32,
    'Projeto PROG 1',
    '2021-03-30 00:00:00',
    '2021-05-01 23:59:59',
    10, -- ALGE
    NULL, -- B103
    2, -- Written
    52  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    33,
    'Projeto PROG 2',
    '2021-05-09 00:00:00',
    '2021-05-28 23:59:59',
    10, -- ALGE
    NULL, -- B103
    2, -- Written
    53  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    34,
    'Exame PROG',
    '2021-06-19 14:30:00',
    '2021-06-19 16:00:00',
    10, -- ALGE
    10, -- B103
    2, -- Written
    54  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    35,
    'Melhoria PROG',
    '2021-07-06 09:30:00',
    '2021-07-06 11:00:00',
    10, -- ALGE
    11, -- B103
    2, -- Written
    55  -- MT1 ALGE
);

---------------------------------------------

INSERT INTO EvaluationEvent VALUES (
    36,
    'Trabalho 1 AED',
    '2021-11-15 00:00:00',
    '2021-12-17 23:55:00',
    11, -- ALGE
    NULL, -- B103
    2, -- Written
    57  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    37,
    'MTT1 AED',
    '2021-12-11 13:30:00',
    '2021-12-11 14:00:00',
    11, -- ALGE
    11, -- B103
    2, -- Written
    63  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    38,
    'MTP1 AED',
    '2021-12-11 14:00:00',
    '2021-12-11 15:30:00',
    11, -- ALGE
    11, -- B103
    3, -- Written
    60  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    39,
    'MTT2 AED',
    '2022-01-25 16:00:00',
    '2022-01-25 16:30:00',
    11, -- ALGE
    12, -- B103
    3, -- Written
    64  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    40,
    'MTP2 AED',
    '2022-01-25 16:30:00',
    '2022-01-25 18:00:00',
    11, -- ALGE
    12, -- B103
    2, -- Written
    61  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    41,
    'Entrega 1 BD',
    '2021-11-08 00:00:00',
    '2021-11-22 23:55:00',
    12, -- ALGE
    NULL, -- B103
    2, -- Written
    66  -- MT1 ALGE
);


INSERT INTO EvaluationEvent VALUES (
    42,
    'Entrega 2 BD',
    '2021-11-23 00:00:00',
    '2021-12-12 23:55:00',
    12, -- ALGE
    NULL, -- B103
    2, -- Written
    67  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    43,
    'Entrega 3 BD',
    '2021-12-13 00:00:00',
    '2022-01-30 23:55:00',
    12, -- ALGE
    NULL, -- B103
    2, -- Written
    68  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    44,
    'MT FIS2',
    '2022-01-08 13:30:00',
    '2022-01-08 15:35:00',
    13, -- ALGE
    12, -- B103
    3, -- Written
    70  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    45,
    'Entrega 1 LDTS',
    '2021-12-07 10:00:00',
    '2022-01-08 23:55:00',
    14, -- ALGE
    NULL, -- B103
    2, -- Written
    73  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    46,
    'Entrega 2 LDTS',
    '2022-01-09 00:00:00',
    '2022-01-22 23:55:00',
    14, -- ALGE
    NULL, -- B103
    2, -- Written
    74  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    47,
    'Entrega 3 LDTS',
    '2022-01-23 00:00:00',
    '2022-01-29 23:55:00',
    14, -- ALGE
    NULL, -- B103
    2, -- Written
    75  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    48,
    'PAs TC',
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15, -- ALGE
    NULL, -- B103
    3, -- Written
    79  -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    49,
    'AAs TC',
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15, -- ALGE
    NULL, -- B103
    3, -- Written
    80 -- MT1 ALGE
);

INSERT INTO EvaluationEvent VALUES (
    50,
    'CAs TC',
    '2021-10-18 00:00:00',
    '2022-03-11 23:59:59',
    15, -- ALGE
    NULL, -- B103
    3, -- Written
    81 -- MT1 ALGE
);

-- Periods

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    1,
    '09:00:00',
    '10:30:00',
    'monday',
    3, -- AOCO
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    2,
    '10:30:00',
    '12:00:00',
    'monday',
    5, -- MDIS
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    3,
    '12:00:00',
    '13:30:00',
    'monday',
    4, -- FPRO
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    4,
    '08:30:00',
    '10:30:00',
    'tuesday',
    1, -- ALGE
    1,
    4 -- B013
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    5,
    '10:30:00',
    '12:30:00',
    'tuesday',
    4, -- FPRO
    1,
    10 -- B208
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    6,
    '14:00:00',
    '16:00:00',
    'tuesday',
    3, -- AOCO
    1,
    3 -- B011
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    7,
    '08:30:00',
    '10:00:00',
    'wednesday',
    5, -- MDIS
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    8,
    '10:00:00',
    '11:30:00',
    'wednesday',
    2, -- AMAT
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject,term, classroom) VALUES (
    9,
    '11:30:00',
    '13:30:00',
    'wednesday',
    1, -- ALGE
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    10,
    '09:00:00',
    '10:30:00',
    'thursday',
    2, -- AMAT
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    11,
    '10:30:00',
    '12:00:00',
    'thursday',
    4, -- FPRO
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    12,
    '12:00:00',
    '13:30:00',
    'thursday',
    3, -- AOCO
    1,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    13,
    '09:00:00',
    '11:00:00',
    'friday',
    5, -- MDIS
    1,
    2 -- B005
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    14,
    '11:00:00',
    '13:00:00',
    'friday',
    2, -- AMAT
    1,
    2 -- B005
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    15,
    '09:00:00',
    '10:00:00',
    'monday',
    6, -- CMAT
    2,
    1 --EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    16,
    '10:00:00',
    '11:00:00',
    'monday',
    7, -- FISI1
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    17,
    '11:00:00',
    '12:30:00',
    'monday',
    10, -- PROG
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    18,
    '09:00:00',
    '11:00:00',
    'tuesday',
    7, -- FISI1
    2,
    5 -- B014
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    19,
    '11:00:00',
    '13:00:00',
    'tuesday',
    6, -- CMAT
    2,
    5 -- B014
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    20,
    '09:00:00',
    '10:00:00',
    'wednesday',
    7, -- FISI1
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    21,
    '10:00:00',
    '11:00:00',
    'wednesday',
    6, -- CMAT
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    22,
    '11:00:00',
    '13:00:00',
    'wednesday',
    8, -- MEST
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    23,
    '17:30:00',
    '19:30:00',
    'wednesday',
    10, -- PROG
    2,
    9 -- B201
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    24,
    '09:00:01', -- TODO foi adiado em 1s
    '10:30:00',
    'thursday',
    10, -- PROG  
    2,    
    1 -- EaD
);

-- TODO Como verificar a sobreposição de aulas no mesmo dia, mas em semestres diferentes?


INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    25,
    '10:30:00',
    '12:30:00', 
    'thursday',  
    9, -- MPCP
    2,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    26,
    '13:30:00',
    '15:30:00', 
    'friday',  
    9, -- MPCP
    2,
    9 -- B201
); 

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    27,
    '15:30:00',
    '17:30:00',
    'friday', 
    8, -- MEST 
    2,
    6 -- B017
);

-------------------------------------------------

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    28,
    '14:00:00',
    '15:00:00',
    'monday',
    11, -- AED
    3,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    29,
    '15:00:00',
    '16:00:00',
    'monday',
    12, -- BD
    3,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    30,
    '16:00:00',
    '17:30:00',
    'monday',
    13, -- F.II
    3,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    31,
    '14:00:01', -- TODO Foi adiado 1s
    '16:00:00',
    'tuesday',
    15, -- TC
    3,
    8  -- B110
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    32,
    '16:00:00',
    '18:00:00',
    'tuesday',
    14, -- LDTS
    3,
    12 -- B304
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    33,
    '09:00:00',
    '11:00:00',
    'wednesday',
    11, -- AED
    3,
    13 -- B308
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    34,
    '11:00:00',
    '12:30:00',
    'wednesday',
    13, -- F.II
    3,
    14 -- B323
); 
  
INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    35,
    '14:00:00',
    '16:00:00',
    'thursday',
    14, -- LDTS
    3,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    36,
    '16:00:00',
    '18:00:00',
    'thursday',
    15, -- TC
    3,
    1  --EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    37,
    '18:00:00',
    '19:00:00',
    'thursday',
    11, -- AED
    3,
    1  -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    38,
    '19:00:00',
    '20:00:00',
    'thursday',
    12, -- BD
    3,
    1 -- EaD
);

INSERT INTO Period(id, startTime, endTime, weekDay, subject, term, classroom) VALUES (
    39,
    '14:00:00',
    '16:00:00',
    'friday',
    12, -- BD
    3,
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

-- Professor photos

UPDATE Professor SET photo = 'antonio_ferreira.jpg' WHERE id = 1;
UPDATE Professor SET photo = 'alexandre_afonso.jpg' WHERE id = 2;
UPDATE Professor SET photo = 'luis_ferras.jpg' WHERE id = 3;
UPDATE Professor SET photo = 'antonio_araujo.jpg' WHERE id = 4;
UPDATE Professor SET photo = 'joao_ferreira.jpg' WHERE id = 5;
UPDATE Professor SET photo = 'afonso_sousa.jpg' WHERE id = 6;
UPDATE Professor SET photo = 'joao_lopes.jpg' WHERE id = 7;
UPDATE Professor SET photo = 'gabriel_david.jpg' WHERE id = 8;
UPDATE Professor SET photo = 'renato_soeiro.jpg' WHERE id = 9;
UPDATE Professor SET photo = 'ana_neves.jpg' WHERE id = 10;
UPDATE Professor SET photo = 'jose_barbosa.jpg' WHERE id = 11;
UPDATE Professor SET photo = 'jaime_villate.jpg' WHERE id = 12;
UPDATE Professor SET photo = 'mercedes_filho.jpg' WHERE id = 13;
UPDATE Professor SET photo = 'antonio_gomes.jpg' WHERE id = 14;
UPDATE Professor SET photo = 'joao_moreira.jpg' WHERE id = 15;
UPDATE Professor SET photo = 'joao_fernandes.jpg' WHERE id = 17;
UPDATE Professor SET photo = 'ana_rocha.jpg' WHERE id = 19;
UPDATE Professor SET photo = 'pedro_ribeiro.jpg' WHERE id = 20;
UPDATE Professor SET photo = 'carla_lopes.jpg' WHERE id = 21;
UPDATE Professor SET photo = 'michel_ferreira.jpg' WHERE id = 22;
UPDATE Professor SET photo = 'andre_restivo.jpg' WHERE id = 23;
UPDATE Professor SET photo = 'rui_abreu.jpg' WHERE id = 24;
UPDATE Professor SET photo = 'joao_bispo.jpg' WHERE id = 25;
UPDATE Professor SET photo = 'joao_cardoso.jpg' WHERE id = 26;

COMMIT;