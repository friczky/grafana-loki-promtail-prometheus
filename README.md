# Grafana Loki Promtail and Prometheus

This repository contains a docker-compose file to run Grafana Loki, Promtail and Prometheus.

## Usage

```bash
docker-compose up -d
```

## Grafana

Grafana is available at http://localhost:3000

## Prometheus

Prometheus is available at http://localhost:9090

## Loki

Loki is available at http://localhost:3100

## Promtail

Promtail is available at http://localhost:9080

## Addtionnal Installation

```
docker plugin install grafana/loki-docker-driver:latest --alias loki --grant-all-permissions
```