variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "database_url" {
  description = "PostgreSQL connection string"
  type        = string
}

variable "redis_url" {
  description = "Redis connection string"
  type        = string
}
