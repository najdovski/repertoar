# Movie Repertoire

Movie Repertoire is a Java based web app for listing, editing, adding and deleting movies into a database (MySQL).
It also serves as a movie news crawler, by fetching data from multiple source, using a unified JSON endpoint, based on different RSS feeds.

For every single movie, there is data fetched from the OMDb API, based on its IMDb ID.
The front end part is done completely by using jQuery + MDBootstrap.

Live application:
- https://repertoar.herokuapp.com/

Login credentials:
- admin:admin
- kristijan:najdovski

## Installation

- Clone the repository
- Download MySQL Java connector v8.0.15 (https://downloads.mysql.com/archives/c-j/)
- Copy the connector (mysql-connector-java-8.0.15.jar) to C:\ProgramFiles\Java
- Install Tomcat 9 (https://tomcat.apache.org/download-90.cgi)
- Right click on project -> BuildPath -> Configure BuildPath -> Libraries tab -> Double click on JRE system library (Or add 
JRE system library by clicking on the Add Library option)
- Edit the DB credentials before starting the project
  1. ___DATABASE_HOST:PORT___ (ex. http://localhost:3306/)
  2. ___DATABASE_NAME___
  3. ___DATABASE_USER___
  4. ___DATABASE_PASSWORD___
- Start Apache Tomcat 9.0 Server and Run the project

## Heroku deployment

- In Eclipse, right click on the project -> Export -> WAR file -> Pick a directory
- Inside the directory where the WAR file is exported, run the following commands (make sure that you have git & heroku cli installed on your machine):
	- git init
	- heroku login
	- heroku git:remote -a heroku_project_name
	- git add .
	- git commit -am "initial commit"
	- git push heroku master
	- heroku plugins:install heroku-cli-deploy
	- heroku war:deploy ./local_war_file_name.war --app heroku_project_name

- Check this video for more details: https://www.youtube.com/watch?v=I9XqYN920hI