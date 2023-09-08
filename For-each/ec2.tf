# Need to create 10 instances for roboshop project using for each loop
resource "aws_instance" "roboshop"{
    for_each = var.roboshop_instances
    ami = var.ami_id
    instance_type = each.value
    tags = {
       Name = each.key
    }
}

resource "aws_route53_record" "dns_records" {
  for_each = aws_instance.roboshop
  zone_id = var.Hosted_zone_id
  name    = "${each.key}.suhaildevops.online"
  type    = "A"
  ttl     = 1
  records = [each.key == "Web" ? each.value.public_ip : each.value.private_ip]
}
