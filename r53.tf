resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "a1" {
  name    = aws_route53_zone.main.name
  zone_id = aws_route53_zone.main.zone_id
  type    = "A"
  
  alias {
    name = aws_s3_bucket.ssbucket.website_domain
    zone_id = aws_s3_bucket.ssbucket.hosted_zone_id
    evaluate_target_health = false
  }

}