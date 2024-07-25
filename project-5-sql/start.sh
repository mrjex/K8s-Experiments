
# Make sure Minikube is running:
# minikube start



updateSqlService() {
    kubectl apply -f stateful-sql-service/todo-mysql.yml
}

updateSqlService



# CREATE DATABASE mrjex;
# SHOW DATABASES ; exit
# USE mrjex

# SHOW TABLES; exit


# CREATE TABLE employees (id INT AUTO_INCREMENT PRIMARY KEY);

# SHOW TABLES; exit

# DROP TABLE employees; exit




# CREATE TABLE employees ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), age INT, department VARCHAR(100), salary DECIMAL(10, 2) );
# CREATE TABLE employees ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));

# DESCRIBE employees; exit





kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --\
  mysql -h mysql-read -e "SELECT * FROM test.messages"



kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --\
  mysql -h mysql-3.mysql -e "SELECT * FROM test.messages"