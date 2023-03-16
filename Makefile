# Author: Fadilah Riczky
# Date: 16-03-2023
# Description: Makefile for Grafana, Loki, and Promtail


up: grafana loki promtail

down: grafana-down loki-down promtail-down

grafana:
	@echo "Starting Grafana"
	@docker-compose -f grafana/docker-compose.yml up -d
	@echo "Grafana started"

grafana-down:
	@echo "Stopping Grafana"
	@docker-compose -f grafana/docker-compose.yml down
	@echo "Grafana stopped"

loki:
	@echo "Starting Loki"
	@docker-compose -f loki/docker-compose.yml up -d
	@echo "Loki started"

loki-down:
	@echo "Stopping Loki"
	@docker-compose -f loki/docker-compose.yml down
	@echo "Loki stopped"

promtail: 
	@echo "Starting Promtail"
	@docker-compose -f promtail/docker-compose.yml up -d
	@echo "Promtail started"

promtail-down:
	@echo "Stopping Promtail"
	@docker-compose -f promtail/docker-compose.yml down
	@echo "Promtail stopped"