# Learning Terraform

Terraform is the infrastructure as code tool from HashiCorp. It is a tool for building, changing, and managing infrastructure in a safe, repeatable way. Operators and Infrastructure teams can use Terraform to manage environments with a configuration language called the HashiCorp Configuration Language (HCL) for human-readable, automated deployments.

## Workflows
1. **Scope** - Confirm what resources need to be created for a given project.
2. **Author** - Create the configuration file in HCL based on the scoped parameters
3. **Initialize** - Run '''terraform init''' in the project directory with the configuration files. This will download the correct provider plug-ins for the project.
4. **Plan & Apply** - Run terraform plan to verify creation process and then terraform apply to create real resources as well as state file that compares future changes in your configuration files to what actually exists in your deployment environment.

https://learn.hashicorp.com/collections/terraform/aws-get-started
