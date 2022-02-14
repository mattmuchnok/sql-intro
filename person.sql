CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    person_name VARCHAR(30) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(40) NOT NULL,
    favorite_color VARCHAR(20) NOT NULL
);

INSERT INTO person (person_name, age, height, city, favorite_color)
VALUES
('Steve', 27, 175, 'Pittsburgh', 'yellow'),
('Mike', 35, 180, 'Warrendale', 'blue'),
('Matt', 33, 188, 'Pittsburgh', 'green'),
('Hunter', 27, 166, 'Gibsonia', 'yellow'),
('Ellie', 22, 123, 'Valencia', 'orange');

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30; -- Instructions ask for <20 AND >30, but for practical purposes, I assume an OR is needed

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'red';

SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');