provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_s3_bucket" "tf_course" {
    bucket = "anish-2021"
    acl = "private"
}

resource "aws_s3_bucket" "tf_course2" {
    bucket = "anish-2021A"
    acl = "private"
}