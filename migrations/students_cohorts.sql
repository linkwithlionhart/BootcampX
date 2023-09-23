CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(50),
  github VARCHAR(255),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  cohort_id INTEGER REFERENCES cohorts(id)
);