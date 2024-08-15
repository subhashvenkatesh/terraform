variable "ami_id" {
  type = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_name" {
    type = map
    default = {
      mongodb = "t3.small"
      redis = "t2.micro"
      mysql = "t3.small"
      rabbitmq = "t2.micro"
      cart = "t2.micro"
      catalogue = "t2.micro"
      user = "t2.micro"
      shipping = "t2.micro"
      payment = "t2.micro"
      dispatch = "t2.micro"
      web = "t2.micro"

    }
  
}


variable "zone_id" {
  type=string
  default = "Z04745361SSM2LZ7ZKXFN"
  
}

variable "domain_name" {
  default = "erumamadu.online"
  
}

output "aws_instance" {
  value = "aws_instance.web"
}