# Prometheus Monitoring Stack in Docker Swarm

Docker image for Docker Swarm with useful defaults. No need to pass in 
custom commands to `docker run`!

## Dockerfile Environment

- `ALERTMANAGER_ENDPOINT`: Endpoint of alertmanager

## Usage

1. Create an overlay network
```
docker network create --attachable --driver overlay monitoring
```
2. Run docker-compose.yml
```
docker stack deploy --compose-file docker-compose.yml prom
```
3. Done!

## Details

The `docker-compose.yml` opens up ports for debugging purposes:

- Prometheus `http://<host-ip>:9090`
- Alertmanager `http://<host-ip>:9093` 
- Grafana `http://<host-ip>:3000`
- NodeExporter `http://<host-ip>:9100`
- cAdvisor `http://<host-ip>:8080`
