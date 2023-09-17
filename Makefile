.PHONY: help ## make task の説明を表示する
help:
	@grep -E "^.PHONY:( *)" $(MAKEFILE_LIST) | sed -e 's/\.PHONY: *//g' | sed -e 's/ *## */\t/g' | awk 'BEGIN {FS = "\t"}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

#
# Lint Tasks
#
.PHONY: lint ## 全ファイルを対象に Lint を実行する
lint:
	@printf "\033[1;33mLint\33[0m\n"; \
	bun lint
	@printf "\033[1;32mSuccess\33[0m\n"

#
# Build Tasks
#
.PHONY: build-pdf ## 職務経歴書の PDF を生成する
build-pdf:
	@printf "\033[1;33mBuild PDF\33[0m\n"; \
	bun build:pdf
	@printf "\033[1;32mSuccess\33[0m\n"


