# TF-URL-REDIRECT

[![Checkov GitHub Action](https://github.com/squidsuit/dns-forwarder/actions/workflows/github-action-workflow.yml/badge.svg)](https://github.com/squidsuit/dns-forwarder/actions/workflows/github-action-workflow.yml)

Use Terraform to provision S3 buckets and Route 53 record(s) to forward traffic from one domain to another.

## TODOS

### SOON:tm:

- Add TFLint GitHub action.
- Add KMS encryption to the buckets.
- Allow HTTPS original connections to redirect as well.
- Test the project works for new domain(s).
- Map steps to set this up in the README.

### LATER

- Look into making this a module if it makes sense. Maybe.