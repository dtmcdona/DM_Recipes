# DM_Recipes
Recipe cookbook django rest api

You need to install docker before running this project.

To run unit tests and flake8 run this command:
```angular2html
docker-compose run -rm app sh -c "python manage.py test && flake8"
```

Once you have installed docker, run this command:
```
docker build .
```

To start up the postgres db container and app container please use:
```commandline
docker-compose up
```

To stop all containers please use:
```commandline
docker-compose down
```

Any commands for Django should be run through docker-compose:
```commandline
docker-compose run --rm app sh -c "{YOUR DJANGO COMMAND HERE}"
```

This project is constructed for test driven development and the command to test the models is done as follows:
```commandline
docker-compose run app sh -c "python manage.py test"
```
All of the tests should be kept in core/tests directory.

To stop and remove all containers do:
```commandline
docker ps -a | xargs docker stop
docker ps -a | xargs docker rm
```