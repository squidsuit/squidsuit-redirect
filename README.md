# dns-forwarder
Repo containing Terraform code that provisions Route 53 record(s) that forward code from one domain to another.

## todo

- Add KMS encryption to the buckets
- test my project works for new domain(s)
- map steps to set this up in the README
- Maybe send the logs to CloudWatch?

### Future state

- Rework to make the code a little DRYer. Ideally use modules and/or for_each for the buckets and Route 53 rules.