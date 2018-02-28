# study-gae-go-circle-ci
[![CircleCI](https://circleci.com/gh/howdy39/study-gae-go-circle-ci.svg?style=svg)](https://circleci.com/gh/howdy39/study-gae-go-circle-ci)

## CIの事前準備
### Docker
[【初心者向け】Docker for Macで開発環境を作る（アプリサーバとDBサーバのコンテナ間連携まで） - Qiita](https://qiita.com/teradonburi/items/8c23806e20ec8efc0ef4)

### Circle CI
workflowsが使えないからローカル実行は微妙
[CircleCI 2.0はローカル環境で実行できるよ - Qiita](https://qiita.com/ieee0824/items/28c7fa9e69cfc6ee7075)
```
curl -o /usr/local/bin/circleci https://circle-downloads.s3.amazonaws.com/releases/build_agent_wrapper/circleci && chmod +x /usr/local/bin/circleci
```


## ローカル実行
### コマンド
```
make serve
```


## デプロイ

### Circle CI のプロジェクト環境変数を設定しておく
```
PROJECT_ID=gae-go-186008
SERVICE_ACCOUNT_CLIENT_EMAIL=gae-go-186008@appspot.gserviceaccount.com
SERVICE_ACCOUNT_KEY=$(cat ./key.json)
```

### コマンド
```
make deploy
```


## 参考サイト
[Angular プロジェクトのビルド・テスト・デプロイ環境を構築する - Qiita](https://qiita.com/kasaharu/items/affba96063cb8309118f)

[Pre-Built CircleCI Docker Images - CircleCI](https://circleci.com/docs/2.0/circleci-images/#nodejs)
