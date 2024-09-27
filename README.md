# K8s OIDC M2M token fetcher

A K8s cronjob to fetch an M2M from an Oauth2 provider and store it as a secret.

## Environment variables

- OIDC_TOKEN_URL
- OIDC_CLIENT_ID
- OIDC_CLIENT_SECRET
- OIDC_AUDIENCE
