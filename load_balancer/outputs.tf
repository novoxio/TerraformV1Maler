# Output the Public IP of the Load Balancer
output "db_lb_public_ip" {
  description = "The public IP address assigned to the database load balancer"
  value       = azurerm_public_ip.db_public_ip.ip_address
}

# Output the Load Balancer ID
output "db_lb_id" {
  description = "The ID of the database load balancer"
  value       = azurerm_lb.db_lb.id
}

# Output the Backend Pool ID
output "db_lb_backend_pool_id" {
  description = "The ID of the backend pool for the database load balancer"
  value       = azurerm_lb_backend_address_pool.db_backend_pool.id
}
