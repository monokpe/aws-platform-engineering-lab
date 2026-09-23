variable "aws_region" {
  description = "AWS Region for this lab."
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name used to identify this project in AWS resource tags."
  type        = string
  default     = "aws-platform-lab"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}
