include .env
export

up: ## Start local environment
	@echo "starting ..."
	docker-compose up -d

down: ## Stop local environment
	@echo "stopping ..."
	docker-compose down

build: ## Build and start up local environment
	@echo "building ..."
	docker-compose up --build -d


composer: ## Run Composer command
	docker exec $$APP_CONTAINER composer $(command)

help:
	@grep -E '^[a-zA-Z_0-9-]+:.*?## .*$$' makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

