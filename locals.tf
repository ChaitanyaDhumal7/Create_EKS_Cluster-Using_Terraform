# Fetch available AZs automatically for the selected region
data "aws_availability_zones" "available" {}

locals {
  name = "my-eks"
  env  = "dev"
  azs  = slice(data.aws_availability_zones.available.names, 0, 3)
}
