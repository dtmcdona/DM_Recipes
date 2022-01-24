# DM_Recipes
Recipe cookbook django rest api

You need to install docker before running this project.

Once you have installed docker, run this command:
```
docker build .
```

Any commands for Django should be run through docker-compose:
```commandline
docker-compose run app sh -c "{YOUR DJANGO COMMAND HERE}"
```

This project is constructed for test driven development and the command to test the models is done as follows:
```commandline
docker-compose run app sh -c "python manage.py test core.tests.test_model"
```
All of the tests should be kept in core/tests directory.

To stop and remove all containers do:
```commandline
docker ps -a | xargs docker stop
docker ps -a | xargs docker rm
```