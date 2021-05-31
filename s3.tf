resource "aws_s3_bucket" "ssbucket" {
    for_each = {
        fqdn = "${var.domain_name}",
        www-fqdn = "www.${var.domain_name}"
    }

    bucket = each.value
    acl    = "public-read"

    versioning {
        enabled = true
    }

    website {
        redirect_all_requests_to = var.redirect_target
    }

    logging {
        target_bucket = aws_s3_bucket.logbucket.id
        target_prefix = "log/${each.value}/"
    }

}

resource "aws_s3_bucket" "logbucket" {
    bucket = "dns-forwarder-log-bucket"
    acl = "log-delivery-write"

    versioning {
        enabled = true
    }

}