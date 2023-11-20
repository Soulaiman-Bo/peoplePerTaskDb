CREATE TABLE offers (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  price int,
  deadline date,
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


-- read data of users table
-- SELECT *  from offers
-- ORDER BY price
-- LIMIT 5;


-- -- Update data of users table
-- UPDATE offers
-- SET price = 6000
-- WHERE ID = 4;


-- -- Delete data of users table
-- DELETE FROM users 
-- WHERE ID = 4;
