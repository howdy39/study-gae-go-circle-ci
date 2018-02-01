.PHONY: all

project_id := ${PROJECT_ID}
version := 'app-ci' # ${GAE_VERSION}
dev_service_account_key = ${DEV_SERVICE_ACCOUNT_KEY}
dev_service_account_client_email = ${DEV_SERVICE_ACCOUNT_CLIENT_EMAIL}

help: ## Print this help
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

test: ## テスト
	go test ./app/...

serve: ## ローカルサーバ実行
	goapp serve app

deploy: ## デプロイ
	goapp deploy -application ${project_id} -version ${version} app
