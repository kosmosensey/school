CREATE TABLE Person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER,
    has_license BOOLEAN
);

CREATE TABLE Car (
    id SERIAL PRIMARY KEY,
    make VARCHAR(255),
    model VARCHAR(255),
    cost DECIMAL(10, 2)
);

CREATE TABLE PersonCar (
    person_id INT REFERENCES Person(id),
    car_id INT REFERENCES Car(id),
    PRIMARY KEY (person_id, car_id)
);
