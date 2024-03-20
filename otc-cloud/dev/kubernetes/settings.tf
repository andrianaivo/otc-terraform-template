terraform {
  required_version = ">=v1.4.6"

  backend "s3" {
    bucket                      = "buffalo-dev-tfstate"
    key                         = "tfstate-kubernetes"
    region                      = "eu-de"
    endpoint                    = "obs.eu-de.otc.t-systems.com"
    skip_region_validation      = true
    skip_credentials_validation = true
  }

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.0"
    }
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">=1.35.6"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}

