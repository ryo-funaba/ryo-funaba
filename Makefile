.PHONY: hekp lint lintFix

help: ## Show options
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

lint: ## Do textlint
	yarn textlint .

lintFix: ## Do textlint fix
	yarn textlint --fix .
