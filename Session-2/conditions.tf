resource "aws_instance" "conditions" {
 ami = var.ami_id
 instance_type = var.Instance_name == "Mongodb" ? "t3.medium" : "t2.micro"
}