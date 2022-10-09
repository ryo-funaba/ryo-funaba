.PHONY: help build-pdf lint

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build-pdf: ## Build PDF of a resume
	yarn build:pdf

lint: ## Do textlint
	yarn lint
