# resource "aws_instance" "Instances_creation"{
#     count =10
#     ami= var.ami_id
#     instance_type= var.instance_names[count.index] == "Mongodb"  || var.instance_names [count.index] == "Mysql" ? "t3.medium" : "t2.micro"
#     tags ={
#         Name= var.instance_names[count.index]
#     }
# }

# resource "aws_route53_record" "Records" {
#  count=10
#   zone_id = var.Hosted_zone_id
#   name    = "${var.instance_names[count.index]}.suhaildevops.online" # interpolation--> mix of variables and string
#   type    = "A"
#   ttl     = 1
#   records = var.instance_names[count.index] =="web" ? [aws_instance.Instances_creation[count.index].public_ip] : [aws_instance.Instances_creation[count.index].private_ip]
# }

# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("${path.module}/devops.pub")
# }