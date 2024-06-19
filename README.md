# Kubernetes (K3s) in the Civo cloud (k3s-civo-sgt7)

![Kubernetes Logo](img/k8s.png)

This repository contains Terraform configurations for setting up a Kubernetes cluster on Civo's K3s platform. It enables you to spin up a simple k3s cluster in the Civo cloud. It is great for courses such as Nigel Poulton's "Quick Start Kubernetes". If you don't have a copy of the book, you can purchase one from [Leanpub](https://leanpub.com/quickstartkubernetes). I highly recommend it!

## Repository Structure

The repository consists of three main Terraform files:

- `main.tf`: This file contains the main resources for the Kubernetes cluster.
- `provider.tf`: This file sets up the Civo provider for Terraform.
- `variables.tf`: This file contains the variables used in the Terraform configurations. You can modify the values in this file to suit your needs.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html): You will need Terraform installed on your local machine to use these configurations.
- terraform.tfvars file in the Terraform directory that contains your civo token. For example:

```txt
  civo_token = "Your Civo Token"
```

## Usage

1. Clone this repository.
2. Modify the `variables.tf` file as needed.
3. Run `terraform init` to initialize your Terraform configuration.
4. Run `terraform apply` to create your Kubernetes cluster.

For more detailed instructions, please refer to the comments in each file.
