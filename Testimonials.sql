CREATE TABLE testimonials (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    comments varchar(100),
    job_title varchar(100),
    user_id int,
    created_At datetime default now(),
    modified_At datetime default now(),
    modified_By int,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL,
    FOREIGN KEY(user_id) REFERENCES users(ID) ON DELETE SET NULL
);

INSERT INTO testimonials (comments, job_title, modified_By, user_id) VALUES
('Great service!', 'Software Engineer', null , 1),
('Awesome experience!', 'Software Developer', null , 1),
('Very satisfied with the outcome.', 'Web Developer', null , 2),
('Impressed with the professionalism.', 'Graphic Designer', null , 3),
('Excellent support team!', 'Data Analyst', null , 3),
('Highly recommend!', 'Project Manager', null , 4),
('Top-notch service!', 'Project Coordinator', null , 5),
('Exceptional work!', 'Marketing Specialist', null , 5),
('Outstanding results!', 'Digital Marketer', null , 6),
('Very professional!', 'Content Writer', null , 6),
('Fantastic job!', 'UI/UX Designer', null , 7),
('Great communication!', 'Product Manager', null , 8),
('Amazing work ethic!', 'Business Analyst', null , 8),
('Prompt and efficient!', 'QA Tester', null , 9),
('Highly skilled!', 'System Administrator',  null ,10);


-- read data of users table
-- SELECT * from testimonials
-- WHERE ID > 5
-- ORDER BY user_id
-- LIMIT 5;


-- -- Update data of users table
-- UPDATE testimonials
-- SET comments = 'best service ever'
-- WHERE ID = 7;


-- -- Delete data of users table
-- DELETE FROM comments 
-- WHERE ID = 7;
