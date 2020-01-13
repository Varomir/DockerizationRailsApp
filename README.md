# DokerizationRailsApp
Dockerization an existing Ruby On Rails application for local development purposes.

## Precondition:
 - Check that "docker" and "docker-compose" applications is already installed on your machine.
```docker --version``` and ```docker-compose --version```
 - Download source code with ROR application
```git clone git@github.com:procore/procore.git```

## Steps to run ROR with docker-compose.
 - Copy all files to the "procore" source directoy app.
 - Build "procore_web" image
```docker-compose build web```
 - Check the local ```.env``` file exist.
- Start all required containers
```docker-compose up```
 - Generate database and dataset. In other terminal from the <Project root> directory run:
```docker-compose run --rm web bundle exec rake db:create db:setup db:test:prepare --trace```
 - Test with curl:
```curl http://127.0.0.1:3000/login --verbose```

## Usefull docker specific commands:
```docker images``` - shows the list of images
```docker ps -a``` - shows the list of in-memory containers
```docker-compose up```
```docker-compose stop```
```docker-compose start```
```docker-compose down```
```docker exec -it web bash```
```docker rmi hash```


