# ReactJS in DockerFile
- use react in docker container

## build docker file
- docker build -t docker-react . 

## run conatiner after build
- docker run -it -v ${PWD}:/usr/src/app -v /usr/src/app/node_modules -p 3000:3000 --rm docker-react




# ReactJS in Docker Compose
- build and run docker from docker compose

## build & run
- docker-compose up -d --build