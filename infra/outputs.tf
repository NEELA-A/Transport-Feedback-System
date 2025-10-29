output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "webapp_url" {
  value = azurerm_linux_web_app.webapp.default_hostname
}
