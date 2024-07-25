# List the application's Pods
kubectl get pods -l app=mysql

# password: octoberfest


CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoDB;



INSERT INTO employee (name)
VALUES ('Peter');


SELECT * FROM employee;



# Example output:
+----+------------+
| id | name       |
+----+------------+
|  1 | theBro     |
|  2 | Trump Goat |
|  3 | Olof       |
|  4 | Peter      |
+----+------------+