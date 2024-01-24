# Docker Orchestration with Terraform
This is an example of a modular Terraform project for education purposes. 

## Modules
- [Image:](./image) This module is a template for Docker image
- [Container:](./container) This module is a template for Docker Container definition and configuration
- [Main](./main.tf) The main module runs Docker Orchestration for Hasura

#### Node: Terraform is NOT suitable for orchestration solutions, instead Kubernetes and Docker compose must be used.
