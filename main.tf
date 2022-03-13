
resource "aws_route_table" "mod_network_route_table" {

  vpc_id = var.mod_network_vpc_id
  tags = {
    Name = join("", [var.stack_prefix, "rt"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "network"])
    Cost_Center = var.stack_cost_center
  }

}