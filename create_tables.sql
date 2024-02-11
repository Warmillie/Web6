
CREATE TABLE IF NOT EXISTS groups (
    id  SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT null
);



CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE 
);


CREATE TABLE IF NOT EXISTS teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT null
);


CREATE TABLE IF NOT EXISTS subjects (
    id  SERIAL PRIMARY KEY,
    name VARCHAR(180) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE CASCADE 
);


CREATE TABLE IF NOT EXISTS grades (
    id SERIAL PRIMARY KEY,
    student_id INT references students(id),
    subject_id INT references subjects(id),
    grade FLOAT,
    date_received DATE,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (subject_id) REFERENCES subjects(id)
);
