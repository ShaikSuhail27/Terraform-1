resource "aws_instance" "Ec2-instance" {
  ami= var.ami_id
  instance_type= var.instance_type
  security_groups =[aws_security_group.allow-all.name]
  tags=var.tags
}