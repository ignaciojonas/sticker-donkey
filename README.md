# Sticker Donkey 🫏
Welcome to the Sticker Donkey repo, this app is a POC to test some technologies.  

# Technologies
## Backend
* [Ruby on Rails](https://rubyonrails.org/)
* [Graphql](https://graphql.org/)
* [Postgres](https://www.postgresql.org/)

## Frontend
* [Next Js](https://nextjs.org/)
* [React](https://react.dev/)

Both apps are using [Docker](https://www.docker.com/) 🐳 to run via docker-compose.

# How to run the apps 🚀

If you are in linux, in order to be able to make changes in the code and use Docker for developement, you have to set the following env variables
```
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)
```

In order to run the apps you have to execute
```
docker-compose up -d
```

Once the containers are up and running yoy have to run the migrations and seed the database
```
docker-compose run rails bundle exec db:create db:migrate db:seed
```

You can access the app in http://localhost:4000

## Application running
<img width="1325" alt="image" src="https://github.com/ignaciojonas/sticker-donkey/assets/874682/926e4158-66fb-4ec2-8e0c-3f976accbe07">
