output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "subnets_count" {
  value = length(aws_subnet.my_subnets)
}