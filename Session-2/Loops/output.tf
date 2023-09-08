output "private_ip"{
    value= aws_instance.Instances_creation1[*].private_ip
}