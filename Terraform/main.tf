# Query xsmall instance size
data "civo_size" "xsmall" {
  filter {
    key    = "type"
    values = ["kubernetes"]
  }

  sort {
    key       = "ram"
    direction = "asc"
  }
}

# Create a cluster with k3s
resource "civo_kubernetes_cluster" "my_cluster" {
  name               = var.name
  cluster_type       = var.cluster_type
  kubernetes_version = var.kubernetes_version
  region             = var.region
  network_id         = civo_network.ks3_net.id
  firewall_id        = civo_firewall.k3s_firewall.id
  pools {
    label      = var.label
    size       = element(data.civo_size.xsmall.sizes, 0).name
    node_count = 3
  }
}