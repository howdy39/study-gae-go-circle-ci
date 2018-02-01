#!/bin/bash

echo "Show environment variables:"
echo "  PROJECT_ID: $PROJECT_ID"
echo "  SERVICE_ACCOUNT_CLIENT_EMAIL: $SERVICE_ACCOUNT_CLIENT_EMAIL"
echo "  SERVICE_ACCOUNT_KEY: $SERVICE_ACCOUNT_KEY" | head -c 100 && echo ""
echo "  CIRCLE_BRANCH: $CIRCLE_BRANCH"
echo "----------------------"

#echo $SERVICE_ACCOUNT_KEY > /tmp/secret.json
#gcloud auth activate-service-account $SERVICE_ACCOUNT_CLIENT_EMAIL --key-file /tmp/secret.json
#appcfg.py --application $PROJECT_ID --version=app-ci --oauth2_access_token `gcloud auth print-access-token` update ./api/src/app.yaml
