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

## Usage
If you haven't already, be sure to initialize terraform by running:
```bash
terraform init
```

To **spin up** infrastructure, simply run:
```bash
terraform apply
```

To **tear down** infrastructure that has been created, run:
```bash
terraform destroy
```
