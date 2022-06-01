service mysql start
service mysql status
echo "create user 'scalereal' identified by 'scalereal';GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'scalereal' WITH GRANT OPTION;exit" > demo.sql
mysql -u root --password="" < demo.sql
echo "CREATE DATABASE scalerealInterns;

USE scalerealInterns;

CREATE TABLE internData(
intern_id int(5) primary key,
intern_name varchar(50),
intern_address varchar(255),
intern_mobile varchar(10),
intern_pan varchar(10)

);

INSERT INTO internData VALUES(1,'Meet Patel','GHODASAR','7486991231','AAAAA2410A');
INSERT INTO internData VALUES(2,'Ronak','HARYANA','1234567890','AAAAA2410B');

SELECT * FROM internData;" > task.sql

mysql -u 'scalereal' --password="scalereal"  < task.sql
