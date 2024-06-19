terraform {
  required_providers {
    civo = {
      source  = "civo/civo"
      version = "1.0.44"
    }
  }
}

provider "civo" {
  token = var.civo_token
}
