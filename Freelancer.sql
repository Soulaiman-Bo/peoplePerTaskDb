CREATE TABLE freelancer (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    fullname varchar(100),
    Competences varchar(100),
    user_id int,
    created_At datetime default now(),
    modified_At datetime default now(),
    modified_By int,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL,
    FOREIGN KEY(user_id) REFERENCES users(ID) ON DELETE SET NULL
);


-- Inserting data into freelancer table
INSERT INTO freelancer (fullname, Competences, modified_By, user_id) VALUES
( 'John Doe', 'Web Development', null, 1),
( 'Alice Johnson', 'Graphic Design', null, 2),
( 'Bob Smith', 'Content Writing', null, 3),
( 'Eva Davis', 'Mobile App Development', null, 4),
( 'Michael White', 'Digital Marketing',null,  5),
( 'Sophia Miller', 'SEO Optimization', null, 6),
( 'James Brown', 'Data Entry', null, 7),
( 'Olivia Lee', 'Video Editing', null, 8),
( 'William Taylor', 'Translation', null, 9),
( 'Emma Wilson', 'Social Media Management', null, 10),
( 'Daniel Harris', 'Virtual Assistance', null, 11),
( 'Ava Moore', 'E-commerce Development', null, 12),
( 'Liam Clark', 'UI/UX Design', null, 13),
( 'Mia Turner', 'Copywriting', null, 14),
( 'Jackson Reed', 'Database Management', null, 15);


-- read data of users table
SELECT * from freelancer
ORDER BY fullname
LIMIT 5;

-- Update data of users table
UPDATE freelancer
SET fullname = 'Soulaiman Bouhlal'
WHERE ID = 4;


-- Delete data of users table
DELETE FROM users 
WHERE ID = 4;

