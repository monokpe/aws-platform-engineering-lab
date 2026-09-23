variable "aws_region" {
  description = "AWS region for bootstrap state backend"
  type        = string
  default     = "eu-west-1"
}

variable "bucket_name" {
  description = "Globally unique name for the Terraform state S3 bucket"
  type        = string
  default     = "aws-platform-lab-tfstate-785772044648"
}

variable "table_name" {
  description = "Name of the DynamoDB table used for Terraform state locking"
  type        = string
  default     = "aws-platform-lab-tflocks"
}
