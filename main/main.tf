resource "aws_instance" "example" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  tags = {
    name="instance"
}
}

output "instance_public_ip" {
    value = aws_instance.example.public_ip
}