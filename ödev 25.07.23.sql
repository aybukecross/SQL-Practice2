CREATE TABLE öğrenciler_v1(
	student_id INT UNIQUE,
	student_name VARCHAR(50) NOT NULL CHECK (student_name<> ''),
	age INT CHECK(age>18),
	department VARCHAR(50)
);

SELECT * FROM öğrenciler_v1

CREATE TABLE orders(
	oder_id INT UNIQUE,
	costumer_id INT NOT NULL,
	order_date DATE CHECK (order_date<current_date),
	total_amount REAL CHECK (total_amount>0)
);

SELECT * FROM orders

CREATE TABLE öğrenciler_v2 (
	student_id INT,
	student_name VARCHAR(50),
	department VARCHAR(50)
);

CREATE TABLE courses(
	course_id INT,
	course_name VARCHAR(100),
	credit INT,
	instructor VARCHAR(50)

CONSTRAINT fk_id FOREIGN KEY (student_name) REFERENCES courses(course_name)
);
