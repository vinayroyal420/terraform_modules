resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_details.cidr
  tags = {
    "Name" = var.vpc_details.name
  }
}

resource "aws_subnet" "my_subnets" {
  vpc_id = aws_vpc.my_vpc.id
  count = length(var.subnet_details.names)
  cidr_block = cidrsubnet(var.vpc_details.cidr,3,count.index)
  availability_zone = var.subnet_details.az[count.index]
  tags = {
    "Name" = var.subnet_details.names[count.index]
  }
}