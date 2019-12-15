dex
===

[dex](https://github.com/dexidp/dex)
is an OpenID Connect Identity (OIDC) and OAuth 2.0 Provider
that can delegate authentication to other identity providers that are
integrated using "connectors".  

This kustomization uses a github connector. Its client credentials
(`client-id`, `client-secret`) need to be specified within the file
`github-client-secret.env` that is not contained within this repository.
You can manage your GitHub OAuth clients
[here](https://github.com/settings/developers).
