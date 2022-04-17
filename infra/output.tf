output "vpc_id" {
    value = module.network.vpc_id
    description = "The generated vpc id"
}

output "availability_zones" {
    value = var.availability_zones
    description = "Availability zones used for subnets"
}