# DNS-FORWARDER

[![Checkov GitHub Action](https://github.com/squidsuit/dns-forwarder/actions/workflows/github-action-workflow.yml/badge.svg)](https://github.com/squidsuit/dns-forwarder/actions/workflows/github-action-workflow.yml)

Provision S3 buckets and Route 53 record(s) to forward traffic from one domain to another.

## TODOS

### SOON:tm:

- Add KMS encryption to the buckets.
- Add HTTPS.
- Test my project works for new domain(s).
- Map steps to set this up in the README.

### LATER

- Make code DRYer. Ideally use modules and/or for_each for the buckets and Route 53 rules.