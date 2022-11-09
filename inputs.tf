variable "vpc_details" {
  type = object({
    cidr = string
    name = string
  })
}
variable "subnet_details" {
  type = object({
    names = list(string)
    az   = list(string)
  })
}