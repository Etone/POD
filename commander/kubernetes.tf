
resource "azurerm_resource_group" "rg" {
  name     = "podcommander"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "pod-commander"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  default_node_pool {
    name       = "pod-default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    shortname : "csa"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}
