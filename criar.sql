PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;

DROP TABLE IF EXISTS EvaluationEvent;
DROP TABLE IF EXISTS GradeComponent;
DROP TABLE IF EXISTS EvaluationType;
DROP TABLE IF EXISTS GradeLimit;
DROP TABLE IF EXISTS Term;
DROP TABLE IF EXISTS Subject;
DROP TABLE IF EXISTS TermSubjects;
DROP TABLE IF EXISTS Task;
DROP TABLE IF EXISTS Period;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Classroom;
DROP TABLE IF EXISTS Institution;
DROP TABLE IF EXISTS Lecturer;

CREATE TABLE Term(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startDate < endDate),
    UNIQUE (startDate, endDate)
);

CREATE TABLE Professor(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(31) UNIQUE,
    website VARCHAR(255),
    photo BLOB
);

CREATE TABLE Institution(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) UNIQUE,
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(255) UNIQUE,
    website VARCHAR(255),
    photo BLOB
);

CREATE TABLE Classroom(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    classroomLocation REFERENCES Institution NOT NULL,
    UNIQUE (name, classroomLocation)
);

CREATE TABLE GradeLimit(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    upper REAL NOT NULL,
    lower REAL NOT NULL,
    UNIQUE (upper, lower),
    CONSTRAINT ValidRange CHECK (lower < upper)
);

CREATE TABLE EvaluationType(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(15) UNIQUE NOT NULL CONSTRAINT ValidName CHECK (name IN ('written', 'oral', 'practical'))
);

CREATE TABLE GradeComponent(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    value REAL NOT NULL,
    weight REAL NOT NULL CONSTRAINT ValidWeight CHECK (weight >= 0 AND weight <= 1),
    gradeLimit REFERENCES GradeLimit NOT NULL,
    parent REFERENCES GradeComponent
);

CREATE TABLE Subject(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE,
    color VARCHAR(6) NOT NULL,
    rootGrade REFERENCES GradeComponent NOT NULL
);

CREATE TABLE Period(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    startTime TIME NOT NULL,
    endTime TIME NOT NULL,
    weekDay VARCHAR(31) NOT NULL CONSTRAINT ValidWeekday CHECK (weekday IN ('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday')),
    note VARCHAR(1023),
    subject REFERENCES Subject NOT NULL,
    classroom REFERENCES Subject NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startTime < endTime),
    UNIQUE (startTime, endTime, weekDay)
);

CREATE TABLE Task(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(1023),
    done INTEGER NOT NULL CONSTRAINT IsBoolean CHECK (done IN (0, 1)),
    subject REFERENCES Subject
);

CREATE TABLE EvaluationEvent(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    startDateTime DATETIME NOT NULL,
    endDateTime DATETIME NOT NULL,
    subject REFERENCES Subject NOT NULL,
    classroom REFERENCES Classroom,
    type REFERENCES EvaluationType NOT NULL,
    grade REFERENCES GradeComponent NOT NULL,
    CONSTRAINT ValidOccurence CHECK (startDateTime < endDateTime),
    UNIQUE (startDateTime, endDateTime)
);

CREATE TABLE TermSubjects(
    term REFERENCES Term NOT NULL,
    subject REFERENCES Subject NOT NULL,
    PRIMARY KEY (term, subject)
);

CREATE TABLE Lecturer(
    professor REFERENCES Professor NOT NULL,
    period REFERENCES Period NOT NULL,
    PRIMARY KEY (professor, period)
);

COMMIT;

