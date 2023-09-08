variable "ami_id"{
    type = string
    default = "ami-03265a0778a880afb"
}


# Count and Count index is used to iterate list type variable
# for each loop is used iterate list and map type variable and it is always key vale pair

variable "roboshop_instances" {
    type = map
    default ={
        MongoDB   = "t3.medium"
        MySQL     = "t3.medium"
        Catalogue = "t2.micro"
        Redis     = "t2.micro"
        User      = "t2.micro"
        Cart      = "t2.micro"
        Shipping  = "t2.micro"
        RabbitMQ  = "t2.micro"
        Payment   = "t2.micro"
        Web       = "t2.micro"
    }
}

variable "Hosted_zone_id" {
   default="Z00775633KJ6HCU16HBU4"
}

variable "ingress" {
    type = list
    default = [
  {
    description      = "Allowing port 80 from public"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  },
  {
    description      = "Allowing port 443 from public"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  },
  {
    description      = "Allowing port 22 from public"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
]
}









