![Kubernetes Logo](img/k8s.png)

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png"/></a><br/>This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.

# Kubernetes (K3s) in the Civo cloud (k3s-civo-sgt7)

This repository contains Terraform configurations for setting up a Kubernetes cluster on Civo's K3s platform. It enables you to spin up a simple k3s cluster in the Civo cloud. It is great for courses such as Nigel Poulton's "Quick Start Kubernetes". If you don't have a copy of the book, you can purchase one from [Leanpub](https://leanpub.com/quickstartkubernetes). I highly recommend it!

## Repository Structure

The repository consists of three main Terraform files:

- `main.tf`: This file contains the main resources for the Kubernetes cluster.
- `provider.tf`: This file sets up the Civo provider for Terraform.
- `variables.tf`: This file contains the variables used in the Terraform configurations. You can modify the values in this file to suit your needs.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html): You will need Terraform installed on your local machine to use these configurations.
- An active API Key in your Civo Cloud.
- There are numerous ways to configure authentication for the [Civo Terraform Provider](https://registry.terraform.io/providers/civo/civo/latest/docs) for this lab environment, but I simply store the API key in a variable e.g.

```bash
  export CIVO_TOKEN=<your token>
```

## Usage

1. Clone this repository.
2. Modify the `variables.tf` file as needed.
3. Run `terraform init` to initialize your Terraform configuration.
4. Run `terraform apply` to create your Kubernetes cluster.

For more detailed instructions, please refer to the comments in each file.
