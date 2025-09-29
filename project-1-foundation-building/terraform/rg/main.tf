# Core shared resources (budgets, monitoring, identity)
resource "azurerm_resource_group" "core" {
  name     = "rg-core"
  location = var.location
  tags     = var.tags
}

# Networking (VNets, subnets, firewalls, gateways)
resource "azurerm_resource_group" "net" {
  name     = "rg-net"
  location = var.location
  tags     = var.tags
}

# Application workloads
resource "azurerm_resource_group" "apps" {
  name     = "rg-apps"
  location = var.location
  tags     = var.tags
}

# Observability (Log Analytics, App Insights, dashboards)
resource "azurerm_resource_group" "observability" {
  name     = "rg-observability"
  location = var.location
  tags     = var.tags
}
