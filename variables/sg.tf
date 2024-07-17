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
