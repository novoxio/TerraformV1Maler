# Define the region where the resources will be created
variable "region" {
  description = "The Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

# Name of the resource group
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Name for the public IP address of the database load balancer
variable "db_public_ip_name" {
  description = "The name for the public IP address for the database load balancer"
  type        = string
  default     = "db-lb-public-ip"
}

# Name for the database load balancer
variable "db_lb_name" {
  description = "The name of the database load balancer"
  type        = string
  default     = "db-load-balancer"
}

# Name for the health probe used in the load balancer
variable "db_health_probe_name" {
  description = "The name for the health probe used in the load balancer"
  type        = string
  default     = "db-health-probe"
}

# Name for the load balancer rule
variable "db_lb_rule_name" {
  description = "The name of the load balancer rule"
  type        = string
  default     = "db-load-balancer-rule"
}

# The port used by the database (default 3306 for MySQL)
variable "db_port" {
  description = "The port used by the database (e.g., 3306 for MySQL)"
  type        = number
  default     = 3306
}
