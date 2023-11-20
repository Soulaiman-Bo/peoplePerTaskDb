CREATE TABLE project (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    project_title varchar(100),
    description varchar(100),
    category_id int,
    sub_category_id int,
    user_id int,
    modified_By int,
    created_At datetime default now(),
    modified_At datetime default now(),
    FOREIGN KEY(category_id) REFERENCES category(ID) ON DELETE SET NULL,
    FOREIGN KEY(sub_category_id) REFERENCES sub_category(ID) ON DELETE SET NULL,
    FOREIGN KEY(user_id) REFERENCES users(ID) ON DELETE SET NULL,
    FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL
);

-- Inserting data into project table
INSERT INTO project (project_title, description, category_id, sub_category_id, user_id, modified_By) VALUES
('Website Redesign', 'Redesigning company website for better user experience.', 1, 1, 1, null),
('Logo Design for New Brand', 'Creating a unique and eye-catching logo for a new brand.', 2, 1, 2, null),
('Content Writing for Blog', 'Writing engaging and informative content for a blog.', 3, 1, 3, null),
('iOS App Development', 'Developing a mobile app for iOS platform.', 4, 1, 4, null),
('Digital Marketing Campaign', 'Executing a digital marketing campaign for increased brand visibility.', 5, 1, 5, null),
('SEO Optimization for Website', 'Optimizing website for better search engine rankings.', 6, 1, 6, null),
('Data Entry and Analysis', 'Performing data entry and analysis tasks for a research project.', 7, 1, 7, null),
('Video Editing for Marketing', 'Editing promotional videos for marketing purposes.', 8, 1, 8, null),
('Translation Services', 'Providing translation services for a set of documents.', 9, 1, 9, null),
('Social Media Management', 'Managing social media accounts and content for a business.', 7, 1, 10, null),
('E-commerce Website Development', 'Developing an e-commerce website for online sales.', 7, 1, 12, null),
('UI/UX Design for Mobile App', 'Designing the user interface and experience for a mobile app.', 7, 2, 13, null),
('Copywriting for Marketing', 'Creating compelling copy for marketing materials.', 7, 1, 14, null),
('Database Management', 'Managing and optimizing a database system for efficient data storage.', 7, 1, 15, null);



-- -- read data of users table
-- SELECT project_title, category_id  from project
-- ORDER BY category_id
-- LIMIT 5;

-- -- Update data of users table
-- UPDATE project
-- SET category_id = 3
-- WHERE ID = 4;


-- -- Delete data of users table
-- DELETE FROM project 
-- WHERE ID = 6;
