resource "aws_s3_bucket" "ssbucket" {
    bucket = var.domain_name
    acl    = "public-read"

    versioning {
        enabled = true
    }

    logging {
        target_bucket = aws_s3_bucket.logbucket.id
        target_prefix = "log/"
    }

    website {
        redirect_all_requests_to = var.redirect_target
    }

}

resource "aws_s3_bucket" "www" {
    bucket = "www.${var.domain_name}"
    acl = "public-read"

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
resource "aws_s3_bucket_policy" "publicread" {
    bucket = aws_s3_bucket.ssbucket.id

    policy = <<EOF
{
"Version": "2008-10-17",
"Statement": [
    {
    "Sid": "PublicReadForGetBucketObjects",
    "Effect": "Allow",
    "Principal": {
        "AWS": "*"
    },
    "Action": "s3:GetObject",
    "Resource": "arn:aws:s3:::${aws_s3_bucket.ssbucket.id}/*"
    }
]
}
EOF
}