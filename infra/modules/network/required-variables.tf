variable "public_subnets" {
  type = map(list(string))
  description = "public subnet configuations: { \"public-subnet-a\": [\"172.16.1.0/24\", \"us-east-1a\"], ...}"
}

variable "private_subnets" {
  type = map(list(string))
  description = "private subnet configuations: { \"private-subnet-a\": [\"172.16.1.0/24\", \"us-east-1a\"], ...}"
}