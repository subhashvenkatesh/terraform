variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
    type = list
    default = ["mongodb", "shipping", "mysql", "redis", "rabbitmq", "user", "web", "payment", "dispatch", "cart", "catalogue" ]
  
}


variable "zone_id" {
  type=string
  default = "Z04745361SSM2LZ7ZKXFN"
  
}

variable "domain_name" {
  default = "erumamadu.online"
  
}