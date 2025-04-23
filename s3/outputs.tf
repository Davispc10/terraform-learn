output "region_domain_name" {
  description = "The region domain name of the S3 bucket"
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.this.id
}