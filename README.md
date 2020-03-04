# automated_deployment_research
Repository to research and test automated application deployment strategies with terraform, ansible, and CI/CD.

## Table of Contents
+ [Requirements](#requirements)
+ [Installation](#installation)

## Requirements
+ [Terraform](https://www.terraform.io/docs/index.html)
+ [git](https://git-scm.com/downloads)

## Installation
1. Clone the repository to your local computer by running: 
```bash
git clone https://github.com/kevinschoonover/automated_deployment_research.git
```

2. Generate a new (or reuse an old) personal access token by navigating to the
   [Applications & API section](https://cloud.digitalocean.com/account/api) of
   the DigitalOcean control panel with read AND write permissions. Be sure to
   save this token.

3. Copy the `secrets.examples.tfvars` into `secrets.tfvars`:
```bash
cp secrets.examples.tfvars secrets.tfvars
```

4. Populate the `secrets.tfvars` with the appropriate values.

## Usage
If you haven't already, be sure to initialize terraform by running:
```bash
terraform init
```

To **spin up** infrastructure, simply run:
```bash
terraform apply -var-file="secrets.tfvars"
```

To **tear down** infrastructure that has been created, run:
```bash
terraform destroy -var-file="secrets.tfvars"
```
