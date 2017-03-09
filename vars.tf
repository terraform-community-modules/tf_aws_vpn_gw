variable "name" {
  description = "Decriptive name used to label tagged resources."
}

variable "vpc_id" {
  description = "VPC ID where VPN Gateway(s) will be attached."
}

# variable "enable_vgw_route_propagation" {
#   description = "Whether the routes known to the Virtual Private Gateway, are propagated to the route tables listed in the route_table_ids listed. Accepts either true of false."
# }