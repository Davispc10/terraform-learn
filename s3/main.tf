resource "aws_s3_bucket" "this" {
  bucket = var.name
  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "oicomovai123"
  tags = {
    Name = "Testando"
  }
}

resource "aws_s3_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.ip_filepath}"
  source = local.ip_filepath
  etag   = filemd5(local.ip_filepath)
}