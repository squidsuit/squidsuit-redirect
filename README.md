# DNS-FORWARDER
Repo containing Terraform code that provisions Route 53 record(s) that forward code from one domain to another.

## TODOS

- Add KMS encryption to the buckets
- test my project works for new domain(s)
- map steps to set this up in the README
- Maybe send the logs to CloudWatch?

### FUTURE STATE TODOS

- Rework to make the code a little DRYer. Ideally use modules and/or for_each for the buckets and Route 53 rules.