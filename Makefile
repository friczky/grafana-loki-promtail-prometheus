# Author: Fadilah Riczky
# Date: 16-03-2023
# Description: Makefile for Grafana, Loki, and Promtail


up: grafana-up loki-up promtail-up prometheus-up

down: grafana-down loki-down promtail-down prometheus-down

## Grafana
grafana-up:
	@echo "Starting Grafana"
	@docker-compose -f grafana/docker-compose.yaml up -d
	@echo "Grafana started"

grafana-down:
	@echo "Stopping Grafana"
	@docker-compose -f grafana/docker-compose.yaml down
	@echo "Grafana stopped"


## Loki
loki-up:
	@echo "Starting Loki"
	@docker-compose -f loki/docker-compose.yaml up -d
	@echo "Loki started"

loki-down:
	@echo "Stopping Loki"
	@docker-compose -f loki/docker-compose.yaml down
	@echo "Loki stopped"


## Promtail
promtail-up: 
	@echo "Starting Promtail"
	@docker-compose -f promtail/docker-compose.yaml up -d
	@echo "Promtail started"

promtail-down:
	@echo "Stopping Promtail"
	@docker-compose -f promtail/docker-compose.yaml down
	@echo "Promtail stopped"

## Prometheus

prometheus-up:
	@echo "Starting Prometheus"
	@docker-compose -f prometheus/docker-compose.yaml up -d
	@echo "Prometheus started"

prometheus-down:
	@echo "Stopping Prometheus"
	@docker-compose -f prometheus/docker-compose.yaml down
	@echo "Prometheus stopped"