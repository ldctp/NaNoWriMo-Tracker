CREATE DATABASE NaNoWriMo
USE NaNoWriMo

CREATE TABLE novel_info (
	novel_id INT NOT NULL,
    nano_year INT NOT NULL,
    novel_name VARCHAR(100),
    end_date DATE NOT NULL,
    word_goal INT NOT NULL,
    CONSTRAINT PK_info PRIMARY KEY (novel_id)
);

CREATE TABLE year2022 (
    day_id INT NOT NULL,
    novel_id INT NOT NULL,
    day_date DATE NOT NULL,
    word_count INT NOT NULL,
    CONSTRAINT pk_2022 PRIMARY KEY (day_id),
    CONSTRAINT fk_2022 FOREIGN KEY (novel_id)
        REFERENCES novel_info (novel_id)
);

