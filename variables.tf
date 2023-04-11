variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name to use in resource names"
  default     = "rtodo2"
}

variable "availability_zones" {
  description = "Availability zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ecs_prod_backend_retention_days" {
  description = "Retention period for backend logs (days)"
  default     = 365
}

# RDS

variable "prod_rds_db_name" {
  description = "RDS database name"
  default     = "rtodo2"
}
variable "prod_rds_username" {
  description = "RDS database username"
  default     = "rtodo2"
}
variable "prod_rds_password" {
  description = "postgres password for production DB"
}
variable "prod_rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t4g.micro"
}
