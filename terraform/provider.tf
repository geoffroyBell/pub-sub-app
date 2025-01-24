terraform {
  # Local backend storage example
  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  # Azure backend storage example
  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  use_oidc                   = false
  skip_provider_registration = true
  subscription_id            = ""
  environment                = "public"
  use_msi                    = false
  use_cli                    = true
}
