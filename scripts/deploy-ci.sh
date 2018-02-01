#!/bin/bash

echo $DEV_SERVICE_ACCOUNT_KEY > /tmp/secret.json
gcloud auth activate-service-account $DEV_SERVICE_ACCOUNT_CLIENT_EMAIL --key-file /tmp/secret.json
appcfg.py --application `gcloud config get-value project` --version=app-ci --oauth2_access_token `gcloud auth print-access-token` update ./app/app.yaml
