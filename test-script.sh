#!/bin/bash

OIDC_M2M_ACCESS_TOKEN=$(
  curl \
    --request POST \
    --url $OIDC_TOKEN_URL \
    --header 'content-type: application/json' \
    --data '{"client_id":"'"$OIDC_CLIENT_ID"'","client_secret":"'"$OIDC_CLIENT_SECRET"'","audience":"'"$OIDC_AUDIENCE"'","grant_type":"client_credentials"}' \
    | jq -r '.access_token'
    )


kubectl apply -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: test
type: Opaque
stringData:
  OIDC_M2M_ACCESS_TOKEN: $OIDC_M2M_ACCESS_TOKEN
EOF