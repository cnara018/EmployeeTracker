DROP DATABASE IF EXISTS employee_tracker_db;
CREATE database employee_tracker_db;

USE employee_tracker_db;
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);


CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30)NOT NULL,
    salary DECIMAL (10,2) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id) REFERENCES department (id)
   
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL, 
    manager_id INT ,
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    FOREIGN KEY(role_id) REFERENCES role(id)
);



INSERT INTO department (name) 
VALUES ("Sales"), ("Customer Service"),("Inventory"), ("Technology"),("Asset Protection");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 50000 ,1),  
("Computer Sales", 30000,1),
("Truck Unloader", 25000, 3),
("Geek Squad agent",40000,4),
("Camera Sales", 30000 ,1),
("Geek Squad Manager", 60000,4),
("Store Security", 30000, 5);



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "doe", 1, 1),
("Bobson", "dugnutt", 2, 1),
("Steve", "Mcdichael",3, 2),
("Terry","Crews",4, 3);