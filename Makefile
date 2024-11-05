# RUNTIME?=podman

# apache-lts:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:5-apache 5.0/apache
# apache-latest:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:6-apache 6.0/apache
# fpm-alpine-lts:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:5-fpm-alpine 5.0/fpm-alpine
# fpm-alpine-latest:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:6-fpm-alpine 6.0/fpm-alpine
# fpm-lts:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:5-fpm 5.0/fpm
# fpm-latest:
# 	$(RUNTIME) build --pull -t docker.io/martialblog/limesurvey:6-fpm 6.0/fpm

std: start

start: 
	docker compose -f ./docker-compose.katrin.yml up -d 

stop: ## Stop the services (containers only)
	docker compose -f ./docker-compose.katrin.yml stop