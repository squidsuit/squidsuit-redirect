resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "record" {
  for_each = aws_s3_bucket.ssbucket
  name    = aws_s3_bucket.ssbucket[each.key].id
  zone_id = aws_route53_zone.main.zone_id
  type    = "A"
  
  alias {
    name = aws_s3_bucket.ssbucket[each.key].website_domain
    zone_id = aws_s3_bucket.ssbucket[each.key].hosted_zone_id
    evaluate_target_health = false
  }
}