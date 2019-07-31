# Docker Image for [GenieACS](https://github.com/genieacs/genieacs)
Dockerfile and docker-compose.yml for [GenieACS](https://github.com/genieacs/genieacs) v1.2.0-beta.0

## Building Docker Image
`docker build . -t swoga/genieacs`
  
## Run Docker Image
Clone the repository.

Copy the `config-sample.env` to `config.env` and modify it to your needs.

_At least you must set the `GENIEACS_UI_JWT_SECRET`._

Run `docker-compose up -d`
