resource "civo_network" "ks3_net" {
  label = "k3s-network"
}

# Create a firewall with the default rules
resource "civo_firewall" "k3s_firewall" {
  name                 = "k3s-firewall"
  region               = var.region
  network_id           = civo_network.ks3_net.id
  create_default_rules = false

  ingress_rule {
    label      = "k3s API"
    protocol   = "tcp"
    port_range = "6443"
    cidr       = var.authorized_networks
    action     = "allow"
  }

  ingress_rule {
    label      = "ssh"
    protocol   = "tcp"
    port_range = "22"
    cidr       = var.authorized_networks
    action     = "allow"
  }

# You should make this more secure by restricting outbound traffic to only the necessary ports. But this is pretty open for simplicity.
  egress_rule {
    label      = "all"
    protocol   = "tcp"
    port_range = "1-65535"
    cidr       = ["0.0.0.0/0"]
    action     = "allow"
  }
}