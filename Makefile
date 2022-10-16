GO_INSTALLED := $(shell which go)
NODE_INSTALLED := $(shell which node)

.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: check ## Install required binaries
	go install -tags 'postgres' github.com/golang-migrate/migrate/v4/cmd/migrate@v4.15.0
	npm install -g dbdocs
	npm install -g @dbml/cli

check: ## Check if all required binaries are installed correctly
ifndef GO_INSTALLED
	$(error "go is not installed, please run 'brew install go'")
endif
ifndef NODE_INSTALLED
	$(error "nodejs is not installed, please run 'brew install node'")
endif

migrate-new: ## Run go-migrate new sql
	@migrate create -ext sql -dir db/migrations -seq $(name)

migrate-up: ## Run go-migrate up sql
	@./tools/migrate.sh up $(limit)

migrate-down: ## Run go-migrate down sql
	@./tools/migrate.sh down $(limit)

migrate-force: ## Run go-migrate force version
	@./tools/migrate.sh force $(version)

migrate-version: ## Run go-migrate check version
	@./tools/migrate.sh version

dbdocs-login: ## dbdocs login
	@dbdocs login

dbdocs-build: ## dbdocs build
	@dbdocs build ./db/docs/database.dbml

dbmltosql: ## export dbml to sql
	@dbml2sql -o ./db/docs/database.sql ./db/docs/database.dbml 