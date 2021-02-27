# Docker Image for [GenieACS](https://github.com/genieacs/genieacs)
Dockerfile and docker-compose.yml for [GenieACS](https://github.com/genieacs/genieacs) v1.2.4

# #Docker image
Docker image is available on Docker Hub, Quay.io

docker pull swoga/genieacs
docker pull quay.io/swoga/genieacs

## Run Docker Image
Clone the repository.

Copy the `config-sample.env` to `config.env` and modify it to your needs.

_At least you must set the `GENIEACS_UI_JWT_SECRET`._

Run `docker-compose up -d`
