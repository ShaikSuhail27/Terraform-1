# if same resource is repeated multiple times we can go for count, count index and for each loops
# if the resource configuration is repeated inside the resource then we can go for dynamic block
resource "aws_security_group" "roboshop" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic ingress {
    for_each = var.ingress
    content {
    description      = ingress.value.description
    from_port        = ingress.value.from_port
    to_port          = ingress.value.to_port
    protocol         = ingress.value.protocol
    cidr_blocks      = ingress.value.cidr_blocks
  }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "roboshop"
  }
}