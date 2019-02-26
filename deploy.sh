cd api/configuration/rancher/configuration

BRANCH=master \
VERSION=25 \
ENABLE_SENTRY=true \
ENVIRONMENT=production \
rancher \
--url http://rancher.audiences0.mad0.bwcom.net:8080 \
--access-key $RANCHER_ACCESS_KEY \
--secret-key $RANCHER_SECRET_KEY \
up --upgrade --batch-size 1 -p -d

cd ../audience-services

BRANCH=master \
VERSION=25 \
ENABLE_SENTRY=true \
ENVIRONMENT=production \
rancher \
--url http://rancher.audiences0.mad0.bwcom.net:8080 \
--access-key $RANCHER_ACCESS_KEY \
--secret-key $RANCHER_SECRET_KEY \
up  --upgrade --batch-size 1 -p -d --env-file envs-live
