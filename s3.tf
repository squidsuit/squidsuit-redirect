resource "aws_s3_bucket" "ssbucket" {
    bucket = var.domain_name
    acl    = "public-read"

    versioning {
        enabled = true
    }

    logging {
        target_bucket = aws_s3_bucket.logbucket.id
        target_prefix = "log/${var.domain_name}/"
    }

    website {
        redirect_all_requests_to = var.redirect_target
    }

}

resource "aws_s3_bucket" "www" {
    bucket = "www.${var.domain_name}"
    acl = "public-read"

    versioning {
        enabled = true
    }

    logging {
        target_bucket = aws_s3_bucket.logbucket.id
        target_prefix = "log/www.${var.domain_name}/"
    }

    website {
        redirect_all_requests_to = var.domain_name
    }
}

resource "aws_s3_bucket" "logbucket" {
    bucket = "dns-forwarder-log-bucket"
    acl = "log-delivery-write"

    versioning {
        enabled = true
    }

}