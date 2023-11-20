CREATE TABLE category (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(100),
    created_At datetime default now(),
    modified_At datetime default now(),
     modified_By int,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL
);

-- Inserting data into category table
INSERT INTO category (category_name, modified_By) VALUES
('Web Development', null),
('Graphic Design', null),
('Content Writing', null),
('Mobile App Development', null),
('Digital Marketing', null),
('SEO Optimization', null),
('Data Entry', null),
('Video Editing', null),
('Translation', null),
('Social Media Management', null);


-- read data of users table
-- SELECT * from category
-- ORDER BY category_name
-- LIMIT 5;


-- Update data of users table
-- UPDATE category
-- SET fullname = 'copy Writing'
-- WHERE ID = 3;


-- Delete data of users table
-- DELETE FROM category 
-- WHERE ID = 4;




CREATE TABLE sub_category (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    sub_category_name varchar(100),
    category_id int,
    created_At datetime default now(),
    modified_At datetime default now(),
      modified_By int,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL,
    FOREIGN KEY(category_id) REFERENCES category(ID) ON DELETE SET NULL
);


INSERT INTO sub_category (sub_category_name, modified_By, category_id) VALUES
('Front-end Development',  null, 1),
('Back-end Development',  null, 1),
('Logo Design',  null, 2),
('Illustration',  null, 2),
('Blog Writing',  null, 3),
('Copywriting',  null, 3),
('iOS App Development',  null, 4),
('Android App Development',  null, 4),
('Social Media Marketing',  null, 5),
('Search Engine Optimization',  null, 6),
('Data Entry Services',  null, 7),
('Video Production',  null, 8),
('Translation Services',  null, 9),
('Content Localization',  null , 9),
('Social Media Strategy',   null ,10);


-- read data of users table
-- SELECT * from sub_category
-- WHERE ID > 5
-- ORDER BY user_id
-- LIMIT 5;

-- UPDATE category
-- SET fullname = 'FrontEnd Development'
-- WHERE ID = 1;


-- Delete data of users table
-- DELETE FROM category 
-- WHERE ID = 4;

