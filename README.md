# terraform-basic-architecture
Terraform module to deploy a simple web application

Clone the repo

cd services/env-staging
terraform apply
Enter the region to launch the service. Currently it is deployed in 1 AZ (Subnets have been hardcoced. Will take it as input or varibales later)
It uses the credentials in ~/.aws/credentials (default). We can further pass it as variables further.

