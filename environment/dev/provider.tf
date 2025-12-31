terraform {
    required_version = ">=1.6.0"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.50.0"
        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "0dbc7906-293b-41aa-916d-9f62c7c48126"
}
