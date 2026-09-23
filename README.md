# AWS Platform Engineering Lab

An end-to-end AWS platform project that demonstrates how to build, deploy, and operate a containerized application with secure, automated infrastructure.

## Current milestone

Provision a multi-AZ VPC using Terraform. This first milestone creates networking only: a VPC, public and private subnets, an internet gateway, and route tables. It intentionally creates no NAT gateway, load balancer, database, or compute resources.

## Planned platform

- Terraform-managed AWS infrastructure
- Amazon VPC with public and private subnets
- Application Load Balancer
- Amazon ECS on Fargate
- Amazon RDS for PostgreSQL
- Amazon S3
- IAM least-privilege access
- Amazon CloudWatch observability
- Docker and GitHub Actions CI/CD

## Run the VPC milestone

Prerequisites: Terraform, the AWS CLI, and an AWS account with credentials configured locally.

```powershell
cd terraform
terraform init
terraform plan
terraform apply
```

When finished, remove the lab resources with:

```powershell
terraform destroy
```

## Cost safety

The initial Terraform configuration deliberately avoids the main early cost traps: NAT gateways, load balancers, Fargate tasks, RDS instances, and public IPv4 addresses. Keep the AWS budget alert enabled and review every `terraform plan` before applying it.

