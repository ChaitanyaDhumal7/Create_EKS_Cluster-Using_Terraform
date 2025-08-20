module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.24"

  # Cluster info
  cluster_name                   = local.name
  cluster_version                = "1.31"
  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  # Control plane subnets
  control_plane_subnet_ids = module.vpc.intra_subnets

  # Cluster addons
  cluster_addons = {
    vpc-cni = {
      most_recent = true
    }
    kube-proxy = { 
      most_recent = true
    }
    core-dns = {
      most_recent = true
    }
  }

  # Defaults for all managed node groups
  eks_managed_node_group_defaults = {
    instance_types                        = ["t2.medium"]
    attach_cluster_primary_security_group = true
  }

  # Node group
  eks_managed_node_groups = {
    tws-cluster-ng = {
      instance_types = ["t2.medium"]

      min_size     = 2
      max_size     = 3
      desired_size = 2

      capacity_type = "SPOT"
    }
  }

  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}
