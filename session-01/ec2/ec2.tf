resource "aws_instance" "web" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]


  tags = {
    Name = "HelloTerraform"
  }
}


resource "aws_security_group" "roboshop-all" {
  name        = var.sg-name
  description = var.sg-description
  ingress {
    description = "Allo all ports"
    from_port   = var.inbound-from-port
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.cidr-blocks
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "roboshop-all-aws"
  }
}
