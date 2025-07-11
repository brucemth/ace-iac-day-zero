provider "aviatrix" {
  controller_ip = 184.73.47.41
  username      = admin
  password      = Root123!@#
}

provider "aws" {
  alias  = "ohio"
  region = var.aws_spoke1_region
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
  subscription_id            = var.azure_subscription_id
  client_id                  = var.azure_client_id
  client_secret              = var.azure_client_secret
  tenant_id                  = var.azure_tenant_id
}
