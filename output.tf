# output.tf - Outputs for monitoring and testing

output "ec2_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.dev_node.public_ip
}

output "pipeline_name" {
  description = "Name of the AWS CodePipeline"
  value       = aws_codepipeline.pipeline.name
}

output "artifact_bucket_name" {
  description = "S3 bucket for CodePipeline artifacts"
  value       = aws_s3_bucket.artifact_bucket.id
}