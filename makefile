DOCKER_COMPOSE:=docker-compose
DOCKER_COMPOSE_INFRA_FILE:=docker-compose.infra.yml
DOCKER_COMPOSE_SERVING_FILE:=docker-compose.serving.yml
DOCKER_COMPOSE_CLIENT_FILE:=docker-compose.client.yml

# 1
.PHONY: start-infra
start-infra:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_INFRA_FILE) up -d

# 2
.PHONY: start-serving
start-serving:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_SERVING_FILE) up -d

# 3の順に起動
.PHONY: start-client
start-client:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_CLIENT_FILE) up -d

.PHONY: stop-infra
stop-infra:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_INFRA_FILE) stop

.PHONY: stop-serving
stop-serving:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_SERVING_FILE) stop

.PHONY: stop-client
stop-client:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_CLIENT_FILE) stop

