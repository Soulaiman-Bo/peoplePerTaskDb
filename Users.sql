CREATE TABLE users (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    fullname varchar(100) UNIQUE NOT NULL,
    password varchar(100) NOT NULL,
    email varchar(100) UNIQUE NOT NULL,
    created_At datetime default now(),
    modified_At datetime default now(),
    modified_By int,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL
);

-- Inserting data into users table
INSERT INTO users (fullname, password, email, modified_By) VALUES
('John Doe', '5f4dcc3b5aa765d61d8327deb882cf99', 'john.doe@example.com', null),
('Alice Johnson', '7b79b326c356e83b16b7cf68417d5414', 'alice.j@example.com', null),
('Bob Smith', '5f4dcc3b5aa765d61d8327deb882cf99', 'bob.smith@example.com', null),
('Eva Davis', '552e21cd60eda76ee4afcc7b9f29c4cb', 'eva.davis@example.com', null),
('Michael White', '140ab4b65c7e97fc2c417b74310cb307', 'michael.white@example.com', null),
('Sophia Miller', 'a5e586f7466c3f03f8b54e6a29e7a94c', 'sophia.m@example.com', null),
('James Brown', 'c7a8f8f4a93efbb64b8c7034c8f7e7b7', 'james.brown@example.com', null),
('Olivia Lee', '5f4dcc3b5aa765d61d8327deb882cf99', 'olivia.lee@example.com', null),
('William Taylor', '5f4dcc3b5aa765d61d8327deb882cf99', 'william.t@example.com', null),
('Emma Wilson', 'e150a89e6b85c5c274c6f330b165d7d7', 'emma.wilson@example.com', null),
('Daniel Harris', 'a7439af9b4a8bc79a5000f9691e0974b', 'daniel.harris@example.com', null),
('Ava Moore', '94c8ad9d99d6a8e8b7111fd643feb0a1', 'ava.moore@example.com', null),
('Liam Clark', '2c855e26fb68ea60c3c67e5b23253c5a', 'liam.clark@example.com', null),
('Mia Turner', '8b0d2eb9d85e8c36da42959f09bf06c4', 'mia.turner@example.com', null),
('Jackson Reed', '9b1cfe230a38469d487f0877a6064893', 'jackson.reed@example.com', null),
('Isabella Hall', '8e11612f26b16cd988ce25f12309de10', 'isabella.h@example.com', null),
('Lucas Young', '1b7d694bf79a2c457cde5d0b5863eb3e', 'lucas.young@example.com', null),
('Sophie Garcia', 'b8b407a8b5a6d82f146eb8ec0ef14b9c', 'sophie.g@example.com', null),
('Ethan Allen', '79a4cbbb1442e1e5535f8db6db9a5583', 'ethan.allen@example.com', null),
('Aria Scott', '71e2ef0a042c04e76c77c7e2f6d0a32d', 'aria.scott@example.com', null);



-- read data of users table
SELECT fullname, email  from users
ORDER BY created_At
LIMIT 5;


-- Update data of users table
UPDATE users
SET fullname = 'Soulaiman Bouhlal'
WHERE ID = 4;


-- Delete data of users table
DELETE FROM users 
WHERE ID = 4;



-- Stored Procedure
DELIMITER //
CREATE PROCEDURE getAllOrderedUsers()
BEGIN
     SELECT * from users ORDER BY fullname;
END //
DELIMITER ;

-- Index
CREATE INDEX usersIndex ON users(fullname);




