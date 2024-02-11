output "bucket_1" {
  value       = aws_s3_bucket.bucket1.id
  description = "bucket1"
}

output "bucket_2" {
  value       = aws_s3_bucket.bucket2.id
  description = "bucket2"
}