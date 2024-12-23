provider "azurerm" {
  features {}
}

# Public IP Address for Load Balancer
resource "azurerm_public_ip" "db_public_ip" {
  name                = var.db_public_ip_name
  location            = var.region
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Load Balancer Resource
resource "azurerm_lb" "db_lb" {
  name                = var.db_lb_name
  location            = var.region
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "frontend-ip-db"
    public_ip_address_id = azurerm_public_ip.db_public_ip.id
  }
}

# Backend Pool for Load Balancer
resource "azurerm_lb_backend_address_pool" "db_backend_pool" {
  name            = "db-backend-pool"
  loadbalancer_id = azurerm_lb.db_lb.id
}

# Health Probe for Load Balancer
resource "azurerm_lb_probe" "db_health_probe" {
  name            = var.db_health_probe_name
  loadbalancer_id = azurerm_lb.db_lb.id
  protocol        = "Tcp"
  port            = var.db_port
}

# Load Balancer Rule
resource "azurerm_lb_rule" "db_lb_rule" {
  name                           = var.db_lb_rule_name
  loadbalancer_id                = azurerm_lb.db_lb.id
  frontend_ip_configuration_name = "frontend-ip-db"
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.db_backend_pool.id]
  probe_id                       = azurerm_lb_probe.db_health_probe.id
  frontend_port                  = var.db_port
  backend_port                   = var.db_port
  protocol                       = "Tcp"
}

