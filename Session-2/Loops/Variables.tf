variable "ami_id" {
    default = "ami-03265a0778a880afb"
}

variable "instance_names" {
    type = list
    default = ["Mongodb","Catalogue","Redis","User","Cart","Mysql","Shipping","RabbitMQ","payment","web"]
}

variable "Hosted_zone_id" {
   default="Z00775633KJ6HCU16HBU4"
}