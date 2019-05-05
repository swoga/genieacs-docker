# Docker Image for [GenieACS](https://github.com/genieacs/genieacs)
Dockerfile and docker-compose.yml for [GenieACS](https://github.com/genieacs/genieacs) master (development of v1.2 at time of writing)

## Building Docker Image
`docker build . -t swoga/genieacs`
  
## Run Docker Image
Clone the repository.

Copy the `config/config-sample.json` to `config/config.json` and modify it to your needs.

_At least you must set the `UI_JWT_SECRET`._

Run `docker-compose up -d`

### Initialize Database
When running for the first time, you need to initialize the database.

`docker exec -it genieacsdocker_genieacs-ui_1 /genieacs/tools/configure-ui`

The container `genieacsdocker_genieacs-ui_1` could be named differently in your environment.

Restart all containers to apply `docker-compose restart`
