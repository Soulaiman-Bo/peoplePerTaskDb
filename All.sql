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

CREATE TABLE offers (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  price int,
  delay varchar(100),
  freelancer_id int,
  project_id int,
  created_At datetime default now(),
  modified_At datetime default now(),
  modified_By int,
  FOREIGN KEY(modified_By) REFERENCES users(ID) ON DELETE SET NULL,
  FOREIGN KEY(freelancer_id) REFERENCES freelancer(ID) ON DELETE SET NULL,
  FOREIGN KEY(project_id) REFERENCES project(ID) ON DELETE SET NULL
);

-- Inserting data into offers table
INSERT INTO offers (price, delay, freelancer_id, project_id, modified_By) VALUES
(1000, '2 weeks', 1, 1, null),
(500, '1 week', 2, 2, null),
(800, '3 weeks', 3, 3, null),
(1200, '4 weeks', 4, 4, null),
(1500, '2 weeks', 5, 5, null),
(700, '1 week', 6, 6, null),
(900, '3 weeks', 7, 7, null),
(600, '2 weeks', 8, 8, null),
(1000, '2 weeks', 9, 9, null),
(1200, '3 weeks', 10, 2, null),
(800, '1 week', 11, 2, null),
(1500, '4 weeks', 12, 2, null),
(1000, '2 weeks', 11, 1, null),
(700, '1 week', 10, 8, null),
(1200, '3 weeks', 10, 7, null);

