.PHONY: help ## make task の説明を表示する
help:
	@grep -E "^.PHONY:( *)" $(MAKEFILE_LIST) | sed -e 's/\.PHONY: *//g' | sed -e 's/ *## */\t/g' | awk 'BEGIN {FS = "\t"}; {printf "\033[36m%-40s\033[0m %s\n", $$1, $$2}'

#
# Install Tasks
#
.PHONY: install ## 依存ライブラリをインストールする
install:
	@printf "\033[1;33m[Install] Start\33[0m\n"
	@if npm install; then \
		printf "\033[1;32m[Install] Succeed\33[0m\n"; \
	else \
		printf "\033[1;31m[Install] Failed\33[0m\n"; \
	fi

#
# Lint Tasks
#
.PHONY: lint ## 全ファイルを対象に Lint を実行する
lint:
	@printf "\033[1;33m[Lint] Start\33[0m\n";
	@if npm run lint; then \
		printf "\033[1;32m[Lint] Succeed\33[0m\n"; \
	else \
		printf "\033[1;31m[Lint] Failed\33[0m\n"; \
	fi

#
# Build Tasks
#
.PHONY: build-pdf ## 職務経歴書の PDF を生成する
build-pdf:
	@printf "\033[1;33m[Build PDF] Start\33[0m\n";
	@if npm run build:pdf; then \
		printf "\033[1;32m[Build PDF] Succeed\33[0m\n"; \
	else \
		printf "\033[1;31m[Build PDF] Failed\33[0m\n"; \
	fi


