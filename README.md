Terraform EKS Project

This project provisions an Amazon Elastic Kubernetes Service (EKS) cluster using Terraform. It includes configuration for VPC, networking, IAM roles, and EKS setup.

🚀 Features

Creates an EKS cluster on AWS.

Configures VPC, subnets, and networking.

Manages IAM roles and permissions for worker nodes.

Easily customizable via locals.tf variables.

Modular and reusable infrastructure code.

📂 Project Structure
.
├── eks.tf          # EKS cluster configuration
├── locals.tf       # Local variables (region, VPC, subnets, etc.)
├── providers.tf    # Provider configuration (AWS, Kubernetes)
└── README.md       # Project documentation

🛠️ Prerequisites

Before using this project, ensure you have:

Terraform
 >= 1.5 installed

AWS CLI
 configured with proper credentials

An AWS account with required permissions

⚙️ Usage

Clone this repository

git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>


Initialize Terraform

terraform init


Validate configuration

terraform validate


Preview changes

terraform plan


Apply changes (create infrastructure)

terraform apply -auto-approve


Destroy infrastructure (optional)

terraform destroy -auto-approve

🔧 Configuration

Modify values in locals.tf to customize your setup:

AWS region

VPC CIDR block

Availability zones

Subnet configuration
