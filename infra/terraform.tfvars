aws_region = "us-west-2"
aws_profile = "angelrob"

availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

public_subnets = {
  "publicA" = ["172.16.1.0/24", "us-east-1a"]
  "publicB" = ["172.16.2.0/24", "us-east-1b"]
  "publicC" = ["172.16.3.0/24", "us-east-1bc"]
}

private_subnets = {
  "AppA" = ["172.16.4.0/24", "us-east-1a"]
  "AppB" = ["172.16.5.0/24", "us-east-1b"]
  "AppC" = ["172.16.6.0/24", "us-east-1c"]

  "DbA" = ["172.16.8.0/24", "us-east-1a"]
  "DbB" = ["172.16.9.0/24", "us-east-1b"]
  "DbC" = ["172.16.10.0/24", "us-east-1c"]
}