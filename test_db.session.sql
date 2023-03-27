DROP TABLE "users";
CREATE TABLE "users" {
    first_name VARCHAR(64) NOT NULL CHECK (first_name != ''),
    last_name VARCHAR(64) NOT NULL CHECK (last_name != ''),
    email VARCHAR(256) NOT NULL CHECK (email != '') UNIQUE,
    is_male BOOLEAN NOT NULL,
    birthday date NOT NULL CHECK (birthday < CURRENT_DATE),
    height NUMERIC(3,2) NOT NULL CHECK (height > 1.00 AND height < 2.50)
};

INSERT INTO "users"
VALUES 
('Elon', 'Musk', 'musk@gmail.com', true, '1971-06-28', 1.88),
('Nazar', 'Ptushch', 'ptushch@gmail.com', true, '1998-09-12', 1.79),
('Ann', 'Lezed', 'lezed@gmail.com', false, '2001-07-28', 1.56);