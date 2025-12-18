terraform {
  required_version = ">= 1.5.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sheetalrg"
    storage_account_name = "stddev20251218"
    container_name       = "tfstate"
    subscription_id      = "de1c1815-4f90-412b-9551-d55f0de9407d"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "de1c1815-4f90-412b-9551-d55f0de9407d"
  
}
