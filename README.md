# study-gae-go-circle-ci

## ローカル実行
### コマンド
```
make serve
```


## デプロイ

### 事前準備
```
export PROJECT_ID=hogehoe
export DEV_SERVICE_ACCOUNT_KEY=$(cat ./key.json)
export DEV_SERVICE_ACCOUNT_CLIENT_EMAIL=hogehoge
```

### コマンド
```
make deploy
```
