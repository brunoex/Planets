# Planets
Add new planets and calculate dates based on terran time.

1. Problems and Goal
* My goal was to create this, where you can Add new planets giving Months and Day of the year and finally calculate the estimated day, month and year on the selected planet. However, I've only managed to calculate the estimated year based on the amount of days per year.

2. DB
* I've tried here to automaticaly create (if not already created) the 'planets' database and table that we need. However it is still not working when we call 'docker-compose'.
* I've setted:
      MYSQL_ROOT_PASSWORD: pass
      MYSQL_DATABASE: planets
* There is also the migration that I used for Planets table inside the migrations folder.

3. Symfony
* I've setted the .env to DATABASE_URL="mysql://root:pass@127.0.0.1:3306/planets?serverVersion=mariadb-10.4.11" to match my Docker container and then I start my server directly with Symfony CLI tool (symfony server:start).
