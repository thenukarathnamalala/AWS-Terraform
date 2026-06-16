variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the ALB target group"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnet IDs where ALB will be deployed"
  type        = list(string)
}

variable "alb_security_group_id" {
  description = "Security group ID attached to ALB"
  type        = string
}