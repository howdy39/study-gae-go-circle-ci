#!/bin/sh

echo $SERVICE_ACCOUNT_KEY > /tmp/secret.json
gcloud auth activate-service-account $SERVICE_ACCOUNT_CLIENT_EMAIL --key-file /tmp/secret.json
appcfg.py --application $PROJECT_ID --version=app-ci --oauth2_access_token `gcloud auth print-access-token` update ./api/src/app.yaml
