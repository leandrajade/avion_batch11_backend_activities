CREATE TABLE lessons (
    id INTEGER PRIMARY KEY,
    name CHARACTER VARYING(255) NOT NULL,
    description CHARACTER VARYING(255) NOT NULL,
    front_end BOOLEAN,
    back_end BOOLEAN,
    price NUMERIC,
    created_at TIMESTAMP without time zone NOT NULL,
    updated_at TIMESTAMP without time zone NOT NULL
);

INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) VALUES (1, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', false, true, 199.99, current_timestamp, current_timestamp);
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) VALUES (2, 'Python', 'Ruby is an interpreted, high-level, general-purpose programming language.', false, true, 199.99, current_timestamp, current_timestamp);
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) VALUES (3, 'Javascript', 'Javascript is a programming language.', true, true, 99.99, current_timestamp, current_timestamp);
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) VALUES (4, 'Rust', 'Rust is a multi-paradigm programming language.', false, true, 499.99, current_timestamp, current_timestamp);
INSERT INTO lessons (id, name, description, front_end, back_end, price, created_at, updated_at) VALUES (5, 'Golang', 'Go is a statistically typed, compiled programming language.', false, true, 499.99, current_timestamp, current_timestamp);


CREATE TABLE instructors (
    id SERIAL PRIMARY KEY,
    first_name CHARACTER VARYING(255) NOT NULL,
    last_name CHARACTER VARYING(255) NOT NULL,
    lesson_id NUMERIC,
    created_at TIMESTAMP without time zone NOT NULL,
    updated_at TIMESTAMP without time zone NOT NULL
);

INSERT INTO instructors (first_name, last_name, lesson_id, created_at, updated_at) VALUES ('Adrian','Co', 1, current_timestamp, current_timestamp);
INSERT INTO instructors (first_name, last_name, lesson_id, created_at, updated_at) VALUES ('Analyn','Cojocson', 1, current_timestamp, current_timestamp);
INSERT INTO instructors (first_name, last_name, lesson_id, created_at, updated_at) VALUES ('Pau','Riosa', 3, current_timestamp, current_timestamp);
INSERT INTO instructors (first_name, last_name, lesson_id, created_at, updated_at) VALUES ('Maurus','Vitor', 3, current_timestamp, current_timestamp);
INSERT INTO instructors (first_name, last_name, lesson_id, created_at, updated_at) VALUES ('Jothn','Young', 6, current_timestamp, current_timestamp);

--- INNER JOIN
SELECT l.name as subject, i.first_name as instructor FROM lessons l INNER JOIN instructors i ON i.lesson_id = l.id;

--- LEFT JOIN
SELECT l.name as subject, i.first_name as instructor_name, i.last_name as instructor_surname FROM lessons l LEFT JOIN instructors i ON i.lesson_id = l.id;

--- RIGHT JOIN
SELECT l.name as subject, i.first_name as instructor_name, i.last_name as instructor_surname FROM lessons l RIGHT JOIN instructors i ON i.lesson_id = l.id;

--- FULL JOIN
SELECT l.name as subject, i.first_name as instructor_name, i.last_name as instructor_surname FROM lessons l FULL JOIN instructors i ON i.lesson_id = l.id;

