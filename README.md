# Planets
Add new planets and calculate dates based on terran time.

1. Problems and Goal
* My goal was to create this, where you can Add new planets giving Months and Day of the year and finally calculate the estimated day, month and year on the selected planet. However, I've only managed to calculate the estimated year based on the amount of days per year.

2. DB
* You can simply run 'docker-compose up -d', the Planets table will be seeded with ./initdb/initdb.sql
* I've setted:
      MYSQL_ROOT_PASSWORD: pass
      MYSQL_DATABASE: planets
* Or one can simply ignore this part and create by hand or run the Doctrine migration that was created for Planets entity :

'CREATE TABLE planets (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, day INT DEFAULT NULL, month INT DEFAULT NULL, PRIMARY KEY(id)) 
DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB'

and

'INSERT INTO `planets`.`planets` (`name`, `day`, `month`) VALUES ('Red planet', '42', '10'), ('Blue planet', '18', '18'); '

3. Symfony
* I've setted the .env to DATABASE_URL="mysql://root:pass@127.0.0.1:3306/planets?serverVersion=mariadb-10.4.11" to match my Docker container and then I start my server directly with Symfony CLI tool (symfony server:start) without Nginx.
