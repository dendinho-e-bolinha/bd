PRAGMA foreign_keys=ON;

DROP TABLE IF EXISTS TermGrades;
DROP TABLE IF EXISTS TermSubjects;
DROP TABLE IF EXISTS Lecturer;
DROP TABLE IF EXISTS Task;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Period;
DROP TABLE IF EXISTS EvaluationEvent;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Institution;
DROP TABLE IF EXISTS EvaluationType;
DROP TABLE IF EXISTS Term;
DROP TABLE IF EXISTS Subject;
DROP TABLE IF EXISTS GradeComponent;
DROP TABLE IF EXISTS GradeLimit;

CREATE TABLE Term(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    UNIQUE NOT NULL,
    startDate   DATE            NOT NULL,
    endDate     DATE            NOT NULL,

    CONSTRAINT ValidOccurence CHECK (startDate < endDate),
    CONSTRAINT UniqueDate UNIQUE (startDate, endDate)
);

CREATE TABLE Professor(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL,
    email       VARCHAR(255)    UNIQUE,
    phone       VARCHAR(31),
    website     VARCHAR(255),
    photo       VARCHAR(255)
);

CREATE TABLE Institution(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    UNIQUE NOT NULL,
    address     VARCHAR(255)    UNIQUE,
    email       VARCHAR(255)    UNIQUE,
    phone       VARCHAR(255)    UNIQUE,
    website     VARCHAR(255),
    photo       VARCHAR(255)
);

CREATE TABLE Classroom(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL,

    classroomLocation REFERENCES Institution ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    CONSTRAINT UniqueNameLocation UNIQUE (name, classroomLocation)
);

CREATE TABLE GradeLimit(
    id          INTEGER         PRIMARY KEY,
    lower       REAL            NOT NULL,
    upper       REAL            NOT NULL,

    CONSTRAINT UniqueLimits UNIQUE (lower, upper),
    CONSTRAINT ValidRange CHECK (lower < upper)
);

CREATE TABLE EvaluationType(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(15)     CONSTRAINT UniqueName UNIQUE NOT NULL CONSTRAINT ValidName CHECK (name IN ('written', 'oral', 'practical'))
);

CREATE TABLE GradeComponent(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL,   
    value       REAL,
    weight      REAL            CONSTRAINT ValidWeight CHECK (weight >= 0 AND weight <= 1),

    gradeLimit REFERENCES GradeLimit ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    parent REFERENCES GradeComponent ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Subject(
    id          INTEGER         PRIMARY KEY,
    name        VARCHAR(255)    UNIQUE NOT NULL,
    color       VARCHAR(6)      NOT NULL
);

CREATE TABLE Period(
    id          INTEGER         PRIMARY KEY,
    startTime   TIME            NOT NULL,
    endTime     TIME            NOT NULL,
    weekday     VARCHAR(15)     NOT NULL CONSTRAINT ValidWeekday CHECK (weekday IN ('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')),
    note        VARCHAR(1023),

    subject REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    term REFERENCES Term ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    classroom REFERENCES Classroom ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startTime < endTime),
    CONSTRAINT UniqueDateTimeTerm UNIQUE (startTime, endTime, weekday, term)
);

CREATE TABLE Task(
    id              INTEGER         PRIMARY KEY,
    name            VARCHAR(255)    NOT NULL,
    description     VARCHAR(1023),
    done            INTEGER         NOT NULL CONSTRAINT IsBoolean CHECK (done IN (0, 1)),

    subject REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE EvaluationEvent(
    id              INTEGER         PRIMARY KEY,
    startDateTime   DATETIME        NOT NULL,
    endDateTime     DATETIME        NOT NULL,

    subject REFERENCES Subject ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    classroom REFERENCES Classroom ON DELETE SET NULL ON UPDATE CASCADE,
    type REFERENCES EvaluationType ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    grade REFERENCES GradeComponent ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startDateTime < endDateTime)
);

CREATE TABLE TermGrades(
    term REFERENCES Term ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    subject REFERENCES Subject ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    grade PRIMARY KEY REFERENCES GradeComponent ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    CONSTRAINT UniqueTermSubject UNIQUE (term, subject)
);

CREATE TABLE Lecturer(
    period REFERENCES Period ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    professor REFERENCES Professor ON DELETE RESTRICT ON UPDATE CASCADE NOT NULL,
    PRIMARY KEY (professor, period)
);
