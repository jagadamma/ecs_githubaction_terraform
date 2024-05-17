variable "aws_region" {
  description = "The AWS region where resources will be provisioned"
  default     = "us-east-2"
}

variable "cluster_name" {
  description = "Name of the ECS cluster"
  default     = "my-cluster"
}

variable "repository_name" {
  description = "Name of the ECR repository"
  default     = "my-repo"
}

variable "task_definition_name" {
  description = "Name of the ECS task definition"
  default     = "my-task-definition"
}

variable "service_name" {
  description = "Name of the ECS service"
  default     = "my-service"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}


variable "subnet_a_cidr_block" {
  description = "CIDR block for subnet A"
  default     = "10.0.2.0/24"
}

variable "subnet_b_cidr_block" {
  description = "CIDR block for subnet B"
  default     = "10.0.3.0/24"
}
